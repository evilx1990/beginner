# Нарисовать в консоле круг, диаметр\радиус которого задается с консоли.

puts 'enter radius :'

radius = gets.to_i

y = radius
r_in = radius - 0.3
r_out = radius + 0.3

while y >= -radius
  x = -radius
  while x < r_out
    if (x * x + y * y >= r_in * r_in) && (x * x + y * y <= r_out * r_out)
      print '*'
    else
      print ' '
    end
    x += 0.5
  end

  print "\n"
  y -= 1
end


# Переделал из С++ решения
=begin
int main(){
    double r_in  = r - 0.4;
    double r_out = r + 0.4;

    for ( double y = r; y >= -r; --y ) {
        for ( double x = -r; x < r_out; x += 0.5 ) {
            double value = x * x + y * y;
            if ( value >= r_in * r_in && value <= r_out * r_out ) {
                cout << '*';
            }
            else {
                cout << ' ';
            }
        }
        cout << endl;
    }

    return 0;
}
=end