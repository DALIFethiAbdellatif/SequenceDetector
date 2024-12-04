Sequence detector circuit implemented with verilog : 

#### State Table : 
<table>
  <tr>
  <th> Current State</th>
  <th> Next State(in = 0, in = 1)</th>
  <th> Output(in = 0, in = 1) </th> </tr>
  <tr>
    <td> S0 </td>
    <td>S0, S1</td>
    <td>0, 0</td>
  </tr>
  <tr>
    <td> S1 </td>
    <td>S0, S2</td>
    <td>0, 0</td>
  </tr>  
  <tr>
    <td> S2 </td>
    <td>S3, S2</td>
    <td>0, 0</td>
  </tr>
  <tr>
    <td> S3 </td>
    <td>S4, S2</td>
    <td>0, 0</td>
  </tr>
  <tr>
    <td> S4 </td>
    <td>S0, S1</td>
    <td>0, 1</td>
  </tr>
</table>

