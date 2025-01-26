//
//  DataSourceMock.swift
//  ChefDelivery
//
//  Created by pablo henrique on 25/01/25.
//

import Foundation

let ordersMock: [OrderType] = [
    OrderType(id: 1, name: "Restaurantes", image: "Hamburguer Image"),
    OrderType(id: 2, name: "Mercado", image: "Mercado Image"),
    OrderType(id: 3, name: "Farmácia", image: "Farmácia Image"),
    OrderType(id: 4, name: "Pet", image: "Pet Image"),
    OrderType(id: 5, name: "Descontos", image: "Descontos Image"),
    OrderType(id: 6, name: "Bebidas", image: "Bebidas Image"),
    OrderType(id: 7, name: "Gourmet", image: "Gourmet Image"),
]

let storesMock: [StoreType] = [
    StoreType(
        id: 1,
        name: "Monsro Burguer",
        logoImage: "Monstro Burguer",
        headerImage: "Monstro burguer",
        location: "Rua Princiipal, 123, São Paulo - SP",
        stars: 4,
        products: [
            ProductType(id: 1, name: "Hamburguer classico", description: "Hamburguer de carne com queijo, alface e tomate", image: "Classic_burger", price: 14.99),
            ProductType(id: 2, name: "Hamburguer com Bacon", description: "Hamburguer de carne com queijo, bacon crocante, alface e tomate", image: "Bacon_burger", price: 16.99),
            ProductType(id: 3, name: "Batatas fritas", description: "Porção de batatas fritas crocantes", image: "fritas", price: 5.99),
                ProductType(id: 4, name: "Refrigerante", description: "Lata de refrigerante de 355ml", image: "soda", price: 3.99),
            ProductType(id: 5, name: "Sorvete de Baunilha", description: "Copo de sorvete de baunilha", image: "vanilla_ice_cream", price: 4.99),
        ]
    ),
    StoreType(
        id: 2,
        name: "Food Court",
        logoImage: "Food Court logo",
        headerImage: "Food court header",
        location: "Aveinida Secundária, 456, São Paulo - SP",
        stars: 4,
        products: [
            ProductType(id: 6, name: "Pizza Margherita", description: "Pizza com molho de tomate, queijo mozzarella e manjericão", image: "margherita_pizza", price: 18.99),
            ProductType(id: 7, name: "Pizza Peperoni", description: "Pizza com molho de tomate, queijo mozzarella e peperoni", image: "pepperoni_pizza", price: 19.99),
            ProductType(id: 8, name: "Pizza quatro queijos", description: "Pizza com queijo mozzarella provolone, parmesão e gongonzola", image: "four_cheese_pizza", price: 21.99),
                ProductType(id: 9, name: "Lasanha à Bolonhesa", description: "Lasanha com molho à bolonhesa, queijo e béchamel", image: "lasagna", price: 22.99),
            ProductType(id: 10, name: "Espaguete à Carbonara", description: "Esapaguete com molho carbonara", image: "spaghetti_carbonara", price: 20.99),
        ]
    ),
    StoreType(
        id: 3,
        name: "Carbron",
        logoImage: "carbron-logo",
        headerImage: "carbron header",
        location: "Rua Terceira, 789, São Paulo - SP",
        stars: 4,
        products: [
            ProductType(id: 11, name: "Picanha", description: "Picanha grelhada servida com arroz, farofa e vinagrete", image: "pcianha", price: 29.99),
            ProductType(id: 12, name: "Costela no bafo", description: "Deliciosa costela assada lentamente, servida com batatas", image: "ribs", price: 26.99),
            ProductType(id: 13, name: "Fraldinha", description: "Fraldinha grelhada servida com arroz, farofa e vinagrete", image: "fraaldinha", price: 27.99),
                ProductType(id: 14, name: "Maminha", description: "Maminha grelhada servida com arroz, farofa e vinagrete", image: "maminha", price: 28.99),
            ProductType(id: 15, name: "Churrasco Misto", description: "Churrasco misto com linguiça, frango e carne bovina, servido com arros farofa e vinagrete", image: "mixed_grill", price: 34.99),
        ]
    ),
    StoreType(
        id: 4,
        name: "Padaria",
        logoImage: "bakery-logo",
        headerImage: "bakery-header",
        location: "Rua Quarta, 159, São Paulo - SP",
        stars: 3,
        products: [
            ProductType(id: 16, name: "Pão Francês", description: "Pão Francês fresquinho", image: "french_bred", price: 0.50),
            ProductType(id: 17, name: "Croissant", description: "Croissant folhado", image: "Croissant", price: 2.99),
            ProductType(id: 18, name: "Rosca Doce", description: "Rosca doce com cobertura de açúcar", image: "sweet_bread", price: 3.99),
                ProductType(id: 19, name: "Bolo de chocolate", description: "Fatia de bolo de chocolate", image: "chocolate_cake_slice", price: 4.99),
            ProductType(id: 20, name: "Café", description: "Café quente", image: "coffee", price: 1.99),
        ]
    ),
    StoreType(
        id: 5,
        name: "Açaí panda",
        logoImage: "acai-panda-logo",
        headerImage: "acai-panda-header",
        location: "Avenida Quinta, 753, São Paulo - SP",
        stars: 4,
        products: [
            ProductType(id: 21, name: "Açaí pequeno", description: "Açaí na tigela de 300ml com granola e banana", image: "small_acai", price: 8.99),
            ProductType(id: 22, name: "Açaí Médio", description: "Açaí na tigela de 500ml com granola e banana e leite condensado", image: "medium_acai", price: 10.99),
            ProductType(id: 23, name: "Açaí Grande", description: "Açaí na tigela de 700ml com granola e banana e leite condensado e morangos", image: "large_acai", price: 13.99),
                ProductType(id: 24, name: "Smoothie de morango", description: "Smoothie de morango feito com iorgute natural", image: "strawberry_smoothie", price: 6.99),
            ProductType(id: 25, name: "Smoothie de banana e cacau", description: "Smoothie de banana e cacau feito com iorgute naturual", image: "banana_cocoa_smoothie", price: 6.99),
        ]
    ),
]
