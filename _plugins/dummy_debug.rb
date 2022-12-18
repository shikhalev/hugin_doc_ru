
require 'pp'

module Shi
  module Arg

    UNITS = %i[
      %
      cm mm Q in pc pt px
      em ex ch rem lh rlh vw vh vmin vmax vb vi svw svh lvw lvh dvw dvh
    ]
    UNITS_PART = UNITS.map { |s| s.to_s }.join('|')

    class Context

      class << self

        def parse args
          ctx = Context.new
          ctx.parse! args
        end

      end

      PATTERN_PARA_VARIABLE      = /^(?<variable>\{\{\-?\s?([[:alpha:]]|_)[\w\.]*\s?\-?\}\})(?<rest>$|\s+.*)/
      PATTERN_FLAG               = /^(?<key>([[:alpha:]]|_)[\w]*)(?<rest>$|\s+.*)/
      PATTERN_PATH               = /^(?<path>[\w\.\-\/]+)(?<rest>$|\s+.*)/
      PATTERN_PARA_SINGLE_QUOTED = /^(?<quoted>'.*?')(?<rest>$|\s.*)/
      PATTERN_PARA_DOUBLE_QUOTED = /^(?<quoted>".*?")(?<rest>$|\s.*)/
      PATTERN_ATTR_KEYWORD       = /^(?<key>([[:alpha:]]|_)\w*)=(?<keyword>true|false|nil)(?<rest>$|\s.*)/
      PATTERN_ATTR_VARIABLE      = /^(?<key>([[:alpha:]]|_)\w*)=(?<variable>([[:alpha:]]|_)[\w\.]*)(?<rest>$|\s.*)/
      PATTERN_ATTR_INTEGER       = /^(?<key>([[:alpha:]]|_)\w*)=(?<integer>\d+)(?<rest>$|\s.*)/
      PATTERN_ATTR_HEX           = /^(?<key>([[:alpha:]]|_)\w*)=(?<hexa>#\h+)(?<rest>$|\s.*)/
      PATTERN_ATTR_FLOAT         = /^(?<key>([[:alpha:]]|_)\w*)=(?<float>\d?\.\d+)(?<rest>$|\s.*)/
      PATTERN_ATTR_INTEGER_U     = Regexp.compile('^(?<key>([[:alpha:]]|_)\w*)=(?<integer>\d+(' + UNITS_PART + '))(?<rest>$|\s.*)')
      PATTERN_ATTR_FLOAT_U       = Regexp.compile('^(?<key>([[:alpha:]]|_)\w*)=(?<float>\d?\.\d+(' + UNITS_PART + '))(?<rest>$|\s.*)')
      PATTERN_ATTR_SINGLE_QUOTED = /^(?<key>([[:alpha:]]|_)\w*)=(?<quoted>'.*?')(?<rest>$|\s.*)/
      PATTERN_ATTR_DOUBLE_QUOTED = /^(?<key>([[:alpha:]]|_)\w*)=(?<quoted>".*?")(?<rest>$|\s.*)/

      attr_reader :parameters, :attributes

      def initialize
        @parameters = []
        @attributes = {}
      end

      def [] kix
        case kix
          when Integer
            @parameters[kix]&.value&.value
          when String
            @attributes[kix.intern]&.value&.value
          when Symbol
            @attributes[kix]&.value&.value
        end
      end

      def new_parameter_variable source
        @parameters << Parameter::new(self, VariableValue::new(source))
      end

      def new_parameter_path source
        @parameters << Parameter::new(self, PathValue::new(source))
      end

      def new_parameter_quoted source
        @parameters << Parameter::new(self, QuotedValue::new(source))
      end

      def new_flag name
        name = name.intern
        para = Attribute::new(self, name, FlagValue::new)
        @parameters << para
        @attributes[name] = para
      end

      def new_attribute_variable name, source
        name = name.intern
        para = Attribute::new(self, name, VariableValue::new(source))
        @parameters << para
        @attributes[name] = para
      end

      def new_attribute_keyword name, source
        name = name.intern
        value = case source
          when 'false'
            false
          when 'true'
            true
          when 'nil'
            nil
        end
        value_object = if value == nil
          NilValue::new
        else
          BooleanValue::new(source, value)
        end
        para = Attribute::new(name, value_object)
        @parameters << para
        @attributes[name] = para
      end

      def new_attribute_quoted name, source
        name = name.intern
        para = Attribute::new(self, name, QuotedValue::new(source))
        @parameters << para
        @attributes[name] = para
      end

      def new_attribute_integer name, source
        name = name.intern
        para = Attribute::new(self, name, IntegerValue::new(source))
        @parameters << para
        @attributes[name] = para
      end

      def new_attribute_float name, source
        name = name.intern
        para = Attribute::new(self, name, FloatValue::new(source))
        @parameters << para
        @attributes[name] = para
      end

      def new_attribute_hex name, source
        name = name.intern
        para = Attribute::new(self, name, HexValue::new(source))
        @parameters << para
        @attributes[name] = para
      end

      def new_attribute_integer_with_unit name, source
        name = name.intern
        para = Attribute::new(self, name, IntegerValueWithUnit::new(source))
        @parameters << para
        @attributes[name] = para
      end

      def new_attribute_float_with_unit name, source
        name = name.intern
        para = Attribute::new(self, name, FloatValueWithUnit::new(source))
        @parameters << para
        @attributes[name] = para
      end

      def parse! args
        args = args.strip
        if !args.empty?
          case args
          when PATTERN_PARA_VARIABLE
            new_parameter_variable $~[:variable].strip
            parse! $~[:rest]
          when PATTERN_FLAG
            new_flag $~[:key].strip
            parse! $~[:rest]
          when PATTERN_PATH
            new_parameter_path $~[:path].strip
            parse! $~[:rest]
          when PATTERN_PARA_SINGLE_QUOTED
            new_parameter_quoted $~[:quoted].strip
            parse! $~[:rest]
          when PATTERN_PARA_DOUBLE_QUOTED
            new_parameter_quoted $~[:quoted].strip
            parse! $~[:rest]
          when PATTERN_ATTR_KEYWORD
            new_attribute_keyword $~[:key].strip, $~[:keyword].strip
            parse! $~[:rest]
          when PATTERN_ATTR_VARIABLE
            new_attribute_variable $~[:key].strip, $~[:variable].strip
            parse! $~[:rest]
          when PATTERN_ATTR_INTEGER
            new_attribute_integer $~[:key].strip, $~[:integer].strip
            parse! $~[:rest]
          when PATTERN_ATTR_HEX
            new_attribute_hex $~[:key].strip, $~[:hexa].strip
            parse! $~[:rest]
          when PATTERN_ATTR_FLOAT
            new_attribute_float $~[:kye].strip, $~[:float].strip
            parse! $~[:rest]
          when PATTERN_ATTR_INTEGER_U
            new_attribute_integer_with_unit $~[:key].strip, $~[:integer].strip
            parse! $~[:rest]
          when PATTERN_ATTR_FLOAT_U
            new_attribute_float_with_unit $~[:key].strip, $~[:float].strip
            parse! $~[:rest]
          when PATTERN_ATTR_SINGLE_QUOTED
            new_attribute_quoted $~[:key].strip, $~[:quoted].strip
            parse! $~[:rest]
          when PATTERN_ATTR_DOUBLE_QUOTED
            new_attribute_quoted $~[:key].strip, $~[:quoted].strip
            parse! $~[:rest]
          else
            raise ArgumentError.new "Invalid arguments from: #{src}"
          end
        end
        self
      end

      def attach! render_context
        @render_context = render_context
        @parameters.each do |param|
          val = param.value
          if VariableValue === val
            val.attach! @render_context
          end
        end
      end

      def find_parameter obj
        @parameters.find_index obj
      end

      def to_hash
        result = {}
        @parameters.each_with_index do |param, index|
          if Attribute === param
            result[param.name] = param.value.source
          else
            result[index] = param.value.source
          end
        end
        result
      end

      def each
        @parameters.each do |param|
          yield param
        end
      end

      def each_parameter
        @parameters.each do |param|
          yield param unless Attribute === param
        end
      end

      def each_attribute
        @attributes.each do |key, param|
          yield key, param
        end
      end

    end

    class Value

      attr_reader :source, :value

      def initialize source
        @source = source
        @value = source
      end

      def to_s
        @source
      end

    end

    class ContextError < RuntimeError; end

    class VariableValue < Value

      INTERNAL_PATTERN = /^\{\{\-?\s?(?<variable>[[:alpha:]][\w\.]*)\s?\-?\}\}$/

      attr_reader :variable

      def initialize source
        super source
        match = @source.match INTERNAL_PATTERN
        if match
          @variable = match[:variable]
          @braced = true
        else
          @variable = source
          @braced = false
        end
      end

      def braced?
        @braced
      end

      def lookup context, name
        lookup = context
        name.split('.').each do |value|
          lookup = lookup[value]
        end
        lookup
      end

      def value
        if @render_context
          lookup @render_context, @variable
        else
          raise ContextError, "No context attached"
        end
      end

      def attach! render_context
        @render_context = render_context
      end

    end

    class StringValue < Value
      # abstract
    end

    class PathValue < StringValue
      # не требует изменений
    end

    class QuotedValue < StringValue

      attr_reader :qoutes

      def initialize source
        super source
        @value = source.slice(1..-2)
        @quotes = case source.slice(0)
          when "'"
            :single
          when '"'
            :double
        end
      end

    end

    class NumericValue < Value
      # abstract
    end

    class IntegerValue < NumericValue

      def initialize source
        super source
        @value = source.to_i
      end

    end

    class FloatValue < NumericValue

      def initialize source
        super source
        @value = source.to_f
      end

    end

    class HexValue < Value

      attr_reader :raw, :bytes

      def initialize source
        super source
        src = source.slice(1..-1)
        @raw = src.to_i(16)
        @bytes = src.each_char.each_slice(2).map { |s| s.join.to_i(16) }
      end

    end

    class NumericValueWithUnit < Value

      attr_reader :number, :unit

    end

    class IntegerValueWithUnit < NumericValueWithUnit

      INTERNAL_PATTERN = /(?<number>\d+)(?<unit>([[:alpha:]]+|%))/

      def initialize source
        super source
        match = @source.match INTERNAL_PATTERN
        if match
          @number = match[:number].to_i
          @unit = match[:unit].intern
        end
      end

    end

    class FloatValueWithUnit < NumericValueWithUnit

      INTERNAL_PATTERN = /(?<number>\d?\.\d+)(?<unit>([[:alpha:]]+|%))/

      def initialize source
        super source
        match = @source.match INTERNAL_PATTERN
        if match
          @number = match[:number].to_f
          @unit = match[:unit].intern
        end
      end

    end

    class KeywordValue < Value
      # abstract
    end

    class BooleanValue < KeywordValue

      def initialize source, value
        super source
        @value = value
      end

    end

    class FlagValue < BooleanValue

      def initialize
        super nil, true
      end

    end

    class NilValue < KeywordValue

      def initialize
        super 'nil'
        @value = nil
      end

    end

    class Parameter

      attr_reader :index, :value

      def initialize context, value
        @context = context
        @value = value
      end

      def index
        @context.find_parameter self
      end

    end

    class Attribute < Parameter

      attr_reader :name

      def initialize context, name, value
        super context, value
        @name = name.intern
      end
    end

    class Flag < Attribute

      def initialize context, name, value
        super context, name, value
      end

    end

  end
end

module Debug

  class DebugTag < Liquid::Tag

    def initialize tag_name, markup, parse_context
      super tag_name, markup, parse_context
      puts "Create context: #{parse_context.class.name}"
      @params = Shi::Arg::Context::parse markup
    end

    def dump
      {
        markup: @markup,
        params: @params.to_hash,
        var: @params[:var],
        jekyll: Jekyll::VERSION
      }
    end

    def render(context)
      @params.attach! context
      puts "Render context: #{context.class.name}"
      "<pre class='rb_debug'>#{self.dump.pretty_inspect}</pre>"
    end

  end

end

Liquid::Template.register_tag('mydebug', Debug::DebugTag)
