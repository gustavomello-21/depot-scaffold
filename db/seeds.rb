# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all

Product.create!(title: "O Cortiço",
                description: %{<p>
                <em>
                O livro narra inicialmente a saga de João Romão rumo ao enriquecimento.
                Para acumular capital, ele explora os empregados e se utiliza até do furto
                para conseguir atingir seus objetivos. João Romão é o... )
                <em>},
                image_url: "cortico.jpg",
                price: 10.00)

Product.create!(title: "Retrato de Dorian Gray ",
                description: %{<p><em>Em 1891, quando foi publicado em sua versão
                final, “O retrato de Dorian Gray” foi recebido com escândalo,
                e provocou um intenso debate sobre o papel da arte em relação
                à moralidade. Alguns anos mais tarde, o livro foi inclusive usado contra
                o próprio autor em processos judiciais, como evidência de que ele possuía
                “uma certa tendência” — no caso, a homossexualidade, motivo pelo
                qual acabou condenado a dois anos de prisão por atentado ao pudor.
                Mais de cem anos depois, porém, o único romance de Oscar Wilde continua
                sendo lido e debatido no mundo inteiro, e por questões que vão muito além do moralismo
                do fim do período vitoriano na Inglaterra, definida por um dos personagens do livro como
                “a terra natal da hipocrisia”. Seu tema central — um personagem que leva uma vida dupla,
                mantendo uma aparência de virtude enquanto se entrega ao hedonismo mais extremado — tem
                apelo atemporal e universal, e sua trama se vale de alguns dos traços que notabilizaram a
                melhor literatura de sua época, como a presença de elementos fantásticos e de grandes reflexões
                filosóficas, além do senso de humor sagaz e do sarcasmo implacável característicos de Wilde.<em><p> },
                image_url: "retrato_dorian_gray.jpg",
                price: 10.00)
