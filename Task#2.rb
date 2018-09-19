# Нарисовать в консоле круг, диаметр\радиус которого задается с консоли.

class Task2
  def p_circle(radius)
    y = radius
    r_in = radius - 0.3
    r_out = radius + 0.3

    while y >= -radius
      x = -radius
      while x < r_out
        coord = x * x + y * y
        print((coord >= r_in**2) && (coord <= r_out**2) ? '*' : ' ')
        x += 0.5
      end
      print "\n"
      y -= 1
    end
  end
end


# Переделал из С++ решения
#int main(){
#    double r_in  = r - 0.4;
#    double r_out = r + 0.4;
#
#    for ( double y = r; y >= -r; --y ) {
#        for ( double x = -r; x < r_out; x += 0.5 ) {
#            double value = x * x + y * y;
#            if ( value >= r_in * r_in && value <= r_out * r_out ) {
#                cout << '*';
#            }
#           else {
#                cout << ' ';
#            }
#        }
#        cout << endl;
#    }
#
#    return 0;
#}
