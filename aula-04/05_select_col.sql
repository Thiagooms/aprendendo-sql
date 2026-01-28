SELECT IdCliente,
    
    -- QtdePontos,
    -- QtdePontos + 10 AS QtdePontosPlus10,
    -- QtdePontos * 2 AS QtdePontosDouble,
    
    DtCriacao,

    -- funções de agregações:

    datetime(substr(DtCriacao, 1, 19)) AS DtCriacaoFormatado,
    strftime('%d', datetime(substr(DtCriacao, 1, 19))) AS DtCriacaoDia

FROM clientes