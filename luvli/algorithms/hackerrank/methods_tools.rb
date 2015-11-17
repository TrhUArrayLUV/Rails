# Your code here
def prime?(n)
    n.prime?
end

# Your code here
def take(ary, d)
    ary.drop(d)

end

def is_in_range(a, b, c)
  a.range?(b, c)
end

# Your code here

def full_name(first, *full)
    full.insert(0, first).join(" ")

end

# Your code here
def convert_temp(temperature, scales)
    convertion = 0
    scales.has_key?(:output_scale) ? output_scale = scales[:output_scale] : output_scale = 'celsius'

    input_scale = scales[:input_scale]
    case input_scale
    when 'celsius'
        f = 9/5.0
        output_scale == 'kelvin' ? convertion = temperature + 273.15  : convertion = (temperature * f) + 32
    when 'kelvin'
        f = 9/5.0
        output_scale == 'fahrenheit' ? convertion = (temperature * f) - 459.67 : convertion = temperature - 273.15
    when 'fahrenheit'
        f = 5/9.0
        output_scale == 'kelvin' ? convertion = (temperature + 459.67) * f : convertion = (temperature - 32) * f

    else
      convertion = temperature
    end

    convertion

end
