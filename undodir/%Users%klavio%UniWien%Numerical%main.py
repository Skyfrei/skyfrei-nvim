Vim�UnDo� �~2���)RZ���b���a���zCu�?�   q   'plt.title('Absolute Runtime for 3000 x    T   &                       g'�{   	 _�                             ����                                                                                                                                                                                                                                                                                                                                                             g'�e    �                  	    plt.p�   !            �                   �               5��                        	                   �      �        	                  �              M      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g'��     �         5      ,with open('/mnt/data/output.txt', 'r') as f:5��                         v                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g'��     �         5      +with open('/mnt/dataoutput.txt', 'r') as f:5��                         r                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g'��     �         5      'with open('/mnt/output.txt', 'r') as f:5��                         q                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g'��     �         5      &with open('/mntoutput.txt', 'r') as f:5��                         n                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g'��    �         5      #with open('/output.txt', 'r') as f:5��                        m                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                       5           v       g'��    �                  �               �              $   plt.figure()   $for alg in df['Algorithm'].unique():   '    subset = df[df['Algorithm'] == alg]   4    plt.plot(subset['m'], subset['Time'], label=alg)   plt.yscale('log')   plt.xlabel('Matrix size m')   plt.ylabel('Time (s)')   )plt.title('Absolute Runtime (log scale)')   plt.legend()   
plt.show()       %# Plot accuracy (orthogonality error)   plt.figure()   $for alg in df['Algorithm'].unique():   '    subset = df[df['Algorithm'] == alg]   5    plt.plot(subset['m'], subset['Error'], label=alg)   plt.yscale('log')   plt.xlabel('Matrix size m')   !plt.ylabel('Orthogonality Error')   7plt.title('Accuracy (Orthogonality Error) - Log Scale')   plt.legend()   
plt.show()       (# Optional: Plot efficiency if available    # Assuming efficiency = 1 / Time   !df['Efficiency'] = 1 / df['Time']   plt.figure()   $for alg in df['Algorithm'].unique():   '    subset = df[df['Algorithm'] == alg]   :    plt.plot(subset['m'], subset['Efficiency'], label=alg)   plt.xlabel('Matrix size m')   #plt.ylabel('Efficiency (1 / Time)')   %plt.title('Efficiency of Algorithms')   plt.legend()   
plt.show()    5��           #               P      �              �                   "   
   P              I      5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                       4   
       v       g'�S    �                 *    plt.plot(subset['m'].values, subset['T�               �                   �               �               4   import matplotlib.pyplot as plt   import pandas as pd   import numpy as np       # Load the data   	data = []   $with open('./output.txt', 'r') as f:       for line in f:   =        algorithm, matrix_info, time, error = line.split('|')   r        m, n = map(int, matrix_info.split(', ')[0].split(': ')[1]), int(matrix_info.split(', ')[1].split(': ')[1])   7        time = float(time.split(': ')[1].split(' ')[0])   +        error = float(error.split(': ')[1])   ;        data.append([algorithm.strip(), m, n, time, error])       Idf = pd.DataFrame(data, columns=['Algorithm', 'm', 'n', 'Time', 'Error'])       # Plot absolute runtimes   plt.figure()   $for alg in df['Algorithm'].unique():   '    subset = df[df['Algorithm'] == alg]   S    plt.plot(list(subset['m']), list(subset['Time']), label=alg)  # Convert to list   plt.yscale('log')   plt.xlabel('Matrix size m')   plt.ylabel('Time (s)')   )plt.title('Absolute Runtime (log scale)')   plt.legend()   
plt.show()       %# Plot accuracy (orthogonality error)   plt.figure()   $for alg in df['Algorithm'].unique():   '    subset = df[df['Algorithm'] == alg]   T    plt.plot(list(subset['m']), list(subset['Error']), label=alg)  # Convert to list   plt.yscale('log')   plt.xlabel('Matrix size m')   !plt.ylabel('Orthogonality Error')   7plt.title('Accuracy (Orthogonality Error) - Log Scale')   plt.legend()   
plt.show()       (# Optional: Plot efficiency if available    # Assuming efficiency = 1 / Time   !df['Efficiency'] = 1 / df['Time']   plt.figure()   $for alg in df['Algorithm'].unique():   '    subset = df[df['Algorithm'] == alg]   Y    plt.plot(list(subset['m']), list(subset['Efficiency']), label=alg)  # Convert to list   plt.xlabel('Matrix size m')   #plt.ylabel('Efficiency (1 / Time)')   %plt.title('Efficiency of Algorithms')   plt.legend()   
plt.show()5��            3   
                   �              �                       *                   �      �       *                  �              �      5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             g'�_     �         =      ,with open('/mnt/data/output.txt', 'r') as f:5��                         v                      5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             g'�_     �         =      +with open('/mnt/dataoutput.txt', 'r') as f:5��                         r                      5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             g'�`     �         =      'with open('/mnt/output.txt', 'r') as f:5��                         q                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g'�`     �         =      &with open('/mntoutput.txt', 'r') as f:5��                         n                      5�_�                          ����                                                                                                                                                                                                                                                                                                                                                             g'�d    �         =      #with open('/output.txt', 'r') as f:5��                         m                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                       =           v        g'��    �   8              1    plt.plot(subset['m'].values, subset['Efficien�   9            �                 
    plt.pl�               �                   �               �               =   import matplotlib.pyplot as plt   import pandas as pd   import numpy as np       # Load the data   	data = []   $with open('./output.txt', 'r') as f:       for line in f:   =        algorithm, matrix_info, time, error = line.split('|')   :        m = int(matrix_info.split(', ')[0].split(': ')[1])   :        n = int(matrix_info.split(', ')[1].split(': ')[1])   7        time = float(time.split(': ')[1].split(' ')[0])   +        error = float(error.split(': ')[1])   ;        data.append([algorithm.strip(), m, n, time, error])       Idf = pd.DataFrame(data, columns=['Algorithm', 'm', 'n', 'Time', 'Error'])       # Ensure numeric data types   1df['m'] = pd.to_numeric(df['m'], errors='coerce')   7df['Time'] = pd.to_numeric(df['Time'], errors='coerce')   9df['Error'] = pd.to_numeric(df['Error'], errors='coerce')       ># Drop any rows with NaN values (in case of conversion issues)   df.dropna(inplace=True)       # Plot absolute runtimes   plt.figure()   $for alg in df['Algorithm'].unique():   '    subset = df[df['Algorithm'] == alg]   g    plt.plot(subset['m'].values, subset['Time'].values, label=alg)  # Using .values to get array format   plt.yscale('log')   plt.xlabel('Matrix size m')   plt.ylabel('Time (s)')   )plt.title('Absolute Runtime (log scale)')   plt.legend()   
plt.show()       %# Plot accuracy (orthogonality error)   plt.figure()   $for alg in df['Algorithm'].unique():   '    subset = df[df['Algorithm'] == alg]   h    plt.plot(subset['m'].values, subset['Error'].values, label=alg)  # Using .values to get array format   plt.yscale('log')   plt.xlabel('Matrix size m')   !plt.ylabel('Orthogonality Error')   7plt.title('Accuracy (Orthogonality Error) - Log Scale')   plt.legend()   
plt.show()       (# Optional: Plot efficiency if available   !df['Efficiency'] = 1 / df['Time']   plt.figure()   $for alg in df['Algorithm'].unique():   '    subset = df[df['Algorithm'] == alg]   m    plt.plot(subset['m'].values, subset['Efficiency'].values, label=alg)  # Using .values to get array format   plt.xlabel('Matrix size m')   #plt.ylabel('Efficiency (1 / Time)')   %plt.title('Efficiency of Algorithms')   plt.legend()   
plt.show()    5��            <                       �              �                       
                   �      �       
              1   �              �      �    8   1              
   �              �       5�_�                            ����                                                                                                                                                                                                                                                                                                                                       ?           v        g'�?     �   :              for alg in set_2[lt.show()�   ;            �                 %set_2 = df[(df['m'] == 3000)lt.show()�               �                  	lt.show()�               �               ?   import matplotlib.pyplot as plt   import pandas as pd   import numpy as np       # Load the data   	data = []   $with open('./output.txt', 'r') as f:       for line in f:   =        algorithm, matrix_info, time, error = line.split('|')   :        m = int(matrix_info.split(', ')[0].split(': ')[1])   :        n = int(matrix_info.split(', ')[1].split(': ')[1])   7        time = float(time.split(': ')[1].split(' ')[0])   +        error = float(error.split(': ')[1])   ;        data.append([algorithm.strip(), m, n, time, error])       Idf = pd.DataFrame(data, columns=['Algorithm', 'm', 'n', 'Time', 'Error'])       # Ensure numeric data types   1df['m'] = pd.to_numeric(df['m'], errors='coerce')   7df['Time'] = pd.to_numeric(df['Time'], errors='coerce')   9df['Error'] = pd.to_numeric(df['Error'], errors='coerce')       ># Drop any rows with NaN values (in case of conversion issues)   df.dropna(inplace=True)       # Plot absolute runtimes   4plt.figure(figsize=(12, 8))  # Increased size by 50%   $for alg in df['Algorithm'].unique():   '    subset = df[df['Algorithm'] == alg]   g    plt.plot(subset['m'].values, subset['Time'].values, label=alg)  # Using .values to get array format   plt.yscale('log')   plt.xlabel('Matrix size m')   plt.ylabel('Time (s)')   )plt.title('Absolute Runtime (log scale)')   plt.legend()   4plt.savefig('absolute_runtime.png')  # Save as image   
plt.show()       %# Plot accuracy (orthogonality error)   4plt.figure(figsize=(12, 8))  # Increased size by 50%   $for alg in df['Algorithm'].unique():   '    subset = df[df['Algorithm'] == alg]   h    plt.plot(subset['m'].values, subset['Error'].values, label=alg)  # Using .values to get array format   plt.yscale('log')   plt.xlabel('Matrix size m')   !plt.ylabel('Orthogonality Error')   7plt.title('Accuracy (Orthogonality Error) - Log Scale')   plt.legend()   2plt.savefig('accuracy_error.png')  # Save as image   
plt.show()       (# Optional: Plot efficiency if available   !df['Efficiency'] = 1 / df['Time']   4plt.figure(figsize=(12, 8))  # Increased size by 50%   $for alg in df['Algorithm'].unique():   '    subset = df[df['Algorithm'] == alg]   m    plt.plot(subset['m'].values, subset['Efficiency'].values, label=alg)  # Using .values to get array format   plt.xlabel('Matrix size m')   #plt.ylabel('Efficiency (1 / Time)')   %plt.title('Efficiency of Algorithms')   plt.legend()   .plt.savefig('efficiency.png')  # Save as image   
plt.show()5��            >                      �              �                                          �      �                        �              �      �    :                     �              S      5�_�                    R        ����                                                                                                                                                                                                                                                                                                                                                  v        g'�A    �   Q   R          	lt.show()5��    Q                      I      
               5�_�                            ����                                                                                                                                                                                                                                                                                                                                       Q   
       v���    g'�    �   6              plt.xlabel('Matrix siz�   7            �                 # Calculate sustained �               �                   �               �               Q   import matplotlib.pyplot as plt   import pandas as pd   import numpy as np       # Load the data   	data = []   $with open('./output.txt', 'r') as f:       for line in f:   =        algorithm, matrix_info, time, error = line.split('|')   :        m = int(matrix_info.split(', ')[0].split(': ')[1])   :        n = int(matrix_info.split(', ')[1].split(': ')[1])   7        time = float(time.split(': ')[1].split(' ')[0])   +        error = float(error.split(': ')[1])   ;        data.append([algorithm.strip(), m, n, time, error])       Idf = pd.DataFrame(data, columns=['Algorithm', 'm', 'n', 'Time', 'Error'])       # Ensure numeric data types   1df['m'] = pd.to_numeric(df['m'], errors='coerce')   1df['n'] = pd.to_numeric(df['n'], errors='coerce')   7df['Time'] = pd.to_numeric(df['Time'], errors='coerce')   9df['Error'] = pd.to_numeric(df['Error'], errors='coerce')       ># Drop any rows with NaN values (in case of conversion issues)   df.dropna(inplace=True)       %# Separate the data into the two sets   0set_1 = df[(df['n'] == 100) & (df['m'] <= 3000)]   1set_2 = df[(df['m'] == 3000) & (df['n'] <= 3000)]       # Plot for first set: i x 100   plt.figure(figsize=(12, 8))   'for alg in set_1['Algorithm'].unique():   -    subset = set_1[set_1['Algorithm'] == alg]   B    plt.plot(subset['m'].values, subset['Time'].values, label=alg)   plt.yscale('log')   %plt.xlabel('Matrix size m (i x 100)')   plt.ylabel('Time (s)')   >plt.title('Absolute Runtime for i x 100 Matrices (log scale)')   plt.legend()   :plt.savefig('absolute_runtime_set_1.png')  # Save as image   
plt.show()       5# Plot for accuracy (orthogonality error) for i x 100   plt.figure(figsize=(12, 8))   'for alg in set_1['Algorithm'].unique():   -    subset = set_1[set_1['Algorithm'] == alg]   C    plt.plot(subset['m'].values, subset['Error'].values, label=alg)   plt.yscale('log')   %plt.xlabel('Matrix size m (i x 100)')   !plt.ylabel('Orthogonality Error')   Lplt.title('Accuracy (Orthogonality Error) for i x 100 Matrices - Log Scale')   plt.legend()   8plt.savefig('accuracy_error_set_1.png')  # Save as image   
plt.show()       # Plot for second set: 3000 x i   plt.figure(figsize=(12, 8))   'for alg in set_2['Algorithm'].unique():   -    subset = set_2[set_2['Algorithm'] == alg]   B    plt.plot(subset['n'].values, subset['Time'].values, label=alg)   plt.yscale('log')   &plt.xlabel('Matrix size n (3000 x i)')   plt.ylabel('Time (s)')   ?plt.title('Absolute Runtime for 3000 x i Matrices (log scale)')   plt.legend()   :plt.savefig('absolute_runtime_set_2.png')  # Save as image   
plt.show()       6# Plot for accuracy (orthogonality error) for 3000 x i   plt.figure(figsize=(12, 8))   'for alg in set_2['Algorithm'].unique():   -    subset = set_2[set_2['Algorithm'] == alg]   C    plt.plot(subset['n'].values, subset['Error'].values, label=alg)   plt.yscale('log')   &plt.xlabel('Matrix size n (3000 x i)')   !plt.ylabel('Orthogonality Error')   Mplt.title('Accuracy (Orthogonality Error) for 3000 x i Matrices - Log Scale')   plt.legend()   8plt.savefig('accuracy_error_set_2.png')  # Save as image   
plt.show()5��            P   
                   H              �                                          �      �                        �              �      �    6                     �              �       5�_�                             ����                                                                                                                                                                                                                                                                                                                                       =           v        g'�z   	 �   S              'plt.title('Absolute Runtime for 3000 x �   T            �   6                  plt.plot(subset['m'].val�   7            �                 # Calculate sustained �               �                   �               �               =   import matplotlib.pyplot as plt   import pandas as pd       # Load the data   	data = []   $with open('./output.txt', 'r') as f:       for line in f:   =        algorithm, matrix_info, time, error = line.split('|')   :        m = int(matrix_info.split(', ')[0].split(': ')[1])   :        n = int(matrix_info.split(', ')[1].split(': ')[1])   7        time = float(time.split(': ')[1].split(' ')[0])   +        error = float(error.split(': ')[1])   ;        data.append([algorithm.strip(), m, n, time, error])       Idf = pd.DataFrame(data, columns=['Algorithm', 'm', 'n', 'Time', 'Error'])       # Ensure numeric data types   1df['m'] = pd.to_numeric(df['m'], errors='coerce')   1df['n'] = pd.to_numeric(df['n'], errors='coerce')   7df['Time'] = pd.to_numeric(df['Time'], errors='coerce')   9df['Error'] = pd.to_numeric(df['Error'], errors='coerce')       ># Drop any rows with NaN values (in case of conversion issues)   df.dropna(inplace=True)       G# Define theoretical peak performance in FLOPS (single core as example)   &peak_performance = 8.8e9  # 8.8 GFLOPS       0# Calculate sustained performance and efficiency   Qdf['FloatingPointOps'] = (2 / 3) * df['m'] * df['n'] * df[['m', 'n']].min(axis=1)   @df['SustainedPerformance'] = df['FloatingPointOps'] / df['Time']   @df['Efficiency'] = df['SustainedPerformance'] / peak_performance       %# Separate the data into the two sets   0set_1 = df[(df['n'] == 100) & (df['m'] <= 3000)]   1set_2 = df[(df['m'] == 3000) & (df['n'] <= 3000)]       # Plot for first set: i x 100   plt.figure(figsize=(12, 8))   'for alg in set_1['Algorithm'].unique():   -    subset = set_1[set_1['Algorithm'] == alg]   H    plt.plot(subset['m'].values, subset['Efficiency'].values, label=alg)   %plt.xlabel('Matrix size m (i x 100)')   plt.ylabel('Efficiency')   ,plt.title('Efficiency for i x 100 Matrices')   plt.legend()   4plt.savefig('efficiency_set_1.png')  # Save as image   
plt.show()       # Plot for second set: 3000 x i   plt.figure(figsize=(12, 8))   'for alg in set_2['Algorithm'].unique():   -    subset = set_2[set_2['Algorithm'] == alg]   H    plt.plot(subset['n'].values, subset['Efficiency'].values, label=alg)   &plt.xlabel('Matrix size n (3000 x i)')   plt.ylabel('Efficiency')   -plt.title('Efficiency for 3000 x i Matrices')   plt.legend()   4plt.savefig('efficiency_set_2.png')  # Save as image   
plt.show()    5��            <                       �              �                                          �      �                        �              �      �    6                 '   �              �      �    S   '                  �              �      5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             g'�`     �         =       with openoutput.txt', 'r') as f:5��       	                  k                      5��