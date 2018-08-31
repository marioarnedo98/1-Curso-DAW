  <html>
                     
            <body>
                <h1>Ejercicio 3 de xquery</h1>
                <table>
                    <tr bgcolor="887788">
                        <th> Titulo </th>
                        <th> Autor </th>
                        <th>Fecha de publicacion</th>
                    </tr>{
  for $libro in doc("Ejercicio 3 libros.xml")//biblioteca/libro
                        where $libro/fechaPublicacion[@anno = "1973"]
                        return 
                    <tr>
                                <td>{data ($libro/titulo)}</td>
                                <td>{data ($libro/autor)}</td>
                                <td>{data ($libro/fechaPublicacion/@anno)}</td>
                            </tr> 
                            }
                </table>
            </body>
        </html>
