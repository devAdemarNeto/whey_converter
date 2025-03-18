# Whey Converter

## 📌 Sobre o Projeto
O **Whey Converter** é um pacote Ruby que compara o custo-benefício de diferentes produtos de whey protein. Ele calcula e retorna informações importantes para ajudar os consumidores a escolherem o produto mais vantajoso com base no preço e na quantidade de proteína.

## 📦 Funcionalidades
- Calcula o percentual de proteína por porção.
- Calcula a quantidade total de proteína disponível na embalagem.
- Determina o custo por 100g de proteína.
- Compara dois produtos e indica o mais vantajoso.

## 🚀 Instalação

Adicione esta linha ao seu `Gemfile` caso queira utilizar como uma gem:

```ruby
# Ainda não publicado no RubyGems, use o caminho local ou GitHub
# gem 'whey_converter', path: 'caminho/para/o/projeto'
```

Ou clone o repositório e instale as dependências manualmente:

```sh
git clone https://github.com/seu-usuario/whey_converter.git
cd whey_converter
bundle install
```

## 💻 Uso

Para utilizar a classe `WheyConverter::WheyProtein`, basta instanciar um objeto com as seguintes informações:

```ruby
require_relative 'lib/whey_converter'

whey1 = WheyConverter::WheyProtein.new(900, 30, 24, 150)
whey2 = WheyConverter::WheyProtein.new(1000, 32, 26, 180)

puts "Percentual de proteína: #{whey1.percentual_proteina}%"
puts "Proteína total na embalagem: #{whey1.total_proteina_embalagem}g"
puts "Custo por 100g de proteína: R$#{whey1.custo_por_100g_proteina}"

puts WheyConverter::WheyProtein.comparar(whey1, whey2)
```

## 🧪 Testes

Os testes são escritos com **RSpec**. Para executá-los, rode:

```sh
rspec
```

## 📜 Licença
Este projeto é licenciado sob a **MIT License**.

---

Criado por [Ademar Neto](https://github.com/devAdemarNeto).

