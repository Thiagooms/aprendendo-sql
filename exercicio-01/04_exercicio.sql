/* 
    Selecione produtos que contém 'churn' no nome
*/

SELECT *

FROM produtos

/* 
    Churn_10pp
    Churn_2pp
    Churn_5pp
*/

/* Podemos fazer de diferentes maneiras com o WHERE essa task

    MANEIRA INICIANTE
    Ex 1: WHERE DescNomeProduto = 'Churn_10pp' OR 'Churn_2pp' OR 'Churn_5pp'

    Ex 2: WHERE DescNomeProduto IN ('Churn_10pp', 'Churn_2pp', 'Churn_5pp')

    Ex 3: WHERE DescNomeProduto LIKE 'Churn%'

    o '%' é um coringa, estamos dizendo basicamente, pegue os registros que
    conterem 'churn' e O RESTANTE que estiver juntamente com esse registro. 

    O problema do LIKE é que ele é muito custoso, ele vai ter que comparar as
    Strings.

    Qual seria a melhor forma então de escrever essa querie?

    A melhor forma seria fazenda uma busca pela CATEGORIA da tabela, se  pegarmos WHERE DescCategoriaProduto = churn_model, vamos obter o mesmo resultado, porém, porque sabemos que a tabela está organizada dessa forma, essa seria a maneira mais eficiente de buscar esses dados da tabela.

 */

 WHERE DescNomeProduto LIKE '%pp'
