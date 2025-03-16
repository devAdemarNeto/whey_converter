# frozen_string_literal: true
require "spec_helper"
require_relative "../lib/whey_converter"


RSpec.describe WheyConverter::WheyProtein do
  let(:whey1) { described_class.new(900, 30, 24, 150) }
  let(:whey2) { described_class.new(1000, 30, 25, 160) }

  it "calcula corretamente o percentual de proteína" do
    expect(whey1.percentual_proteina).to eq(80.0)
  end

  it "calcula corretamente a quantidade total de proteína na embalagem" do
    expect(whey1.total_proteina_embalagem).to eq(720.0)
  end

  it "calcula corretamente o custo por 100g de proteína" do
    expect(whey1.custo_por_100g_proteina).to eq(20.83)
  end

  it "compara corretamente dois produtos e retorna o mais vantajoso" do
    expect(WheyConverter::WheyProtein.comparar(whey1, whey2))
      .to eq("O segundo produto é mais vantajoso, custando R$19.2 por 100g de proteína.")
  end
end
