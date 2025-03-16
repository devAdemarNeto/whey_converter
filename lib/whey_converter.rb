# frozen_string_literal: true

require_relative "whey_converter/version"

module WheyConverter
  class WheyProtein
    attr_reader :peso_total, :porcao, :proteina_por_porcao, :preco

    def initialize(peso_total, porcao, proteina_por_porcao, preco)
      @peso_total = peso_total.to_f
      @porcao = porcao.to_f
      @proteina_por_porcao = proteina_por_porcao.to_f
      @preco = preco.to_f
    end

     # Calcula o percentual de proteína na porção
     def percentual_proteina
      ((proteina_por_porcao / porcao) * 100).round(2)
    end

    # Calcula a quantidade total de proteína na embalagem
    def total_proteina_embalagem
      (peso_total / porcao * proteina_por_porcao).round(2)
    end

    # Calcula o custo para cada 100g de proteína
    def custo_por_100g_proteina
      ((preco / total_proteina_embalagem) * 100).round(2)
    end

     # Método de comparação entre dois produtos de whey
     def self.comparar(whey1, whey2)
      custo1 = whey1.custo_por_100g_proteina
      custo2 = whey2.custo_por_100g_proteina

      if custo1 < custo2
        "O primeiro produto é mais vantajoso, custando R$#{custo1} por 100g de proteína."
      elsif custo2 < custo1
        "O segundo produto é mais vantajoso, custando R$#{custo2} por 100g de proteína."
      else
        "Ambos os produtos possuem o mesmo custo-benefício, R$#{custo1} por 100g de proteína."
      end
    end

  end

end