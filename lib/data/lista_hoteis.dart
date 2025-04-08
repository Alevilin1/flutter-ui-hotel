import 'package:flutter/material.dart';
import 'package:flutter_hotel/models/modelo_facilidades.dart';
import 'package:flutter_hotel/models/modelo_hotel.dart';

List<Hotel> hoteis = [
  Hotel(
      imagem:
          "https://quantocustaviajar.com/blog/wp-content/uploads/2017/12/melhores-hoteis-de-luxo-do-brasil-1.jpg",
      nome: "NANNAI Muro Alto",
      descricao:
          "Localizado nas areias brancas da Praia de Muro Alto, o Nannai Resort & Spa fornece diversas atividades. Você pode se refrescar na piscina ao ar livre ou relaxar no spa e sauna. Além disso, a propriedade oferece um restaurante e bar.",
      avaliacao: 6,
      estrelas: 5,
      preco: 1834,
      facilidades: [
        Facilidades(
            icone: Icons.pets, nome: "Pets", descricao: "Animais aceitos"),
        Facilidades(
            nome: "Internet", descricao: 'Internet no hotel', icone: Icons.wifi)
      ]),
  Hotel(
      imagem:
          "https://cf.bstatic.com/xdata/images/hotel/max1024x768/501332891.jpg?k=810d7bc5016ddb9d47b4088eb0008ead296b6886b724f94b30ec493530253217&o=&hp=1",
      nome: "Vila Kalango",
      descricao:
          "Situada entre a Praia de Jericoacoara e a Duna do Pôr do Sol, a Vila Kalango dispõe de acomodações em cabanas de praia tranquilas, à sombra de coqueiros e cajueiros.",
      avaliacao: 7,
      estrelas: 4,
      preco: 1834,
      facilidades: [
        Facilidades(
            icone: Icons.pets, nome: "Pets", descricao: "Animais aceitos"),
      ]),
  Hotel(
      imagem:
          "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/22/ab/e8/34/piscina-principal.jpg?w=1000&h=-1&s=1",
      nome: "Iberostar Waves Bahia",
      descricao:
          "O Iberostar Waves Bahia é um resort com regime all inclusive, localizado a 9 km da vila Praia do Forte e a 57 km do Aeroporto Internacional de Salvador.",
      avaliacao: 5,
      estrelas: 4,
      preco: 1834,
      facilidades: [
        Facilidades(
            icone: Icons.pets, nome: "Pets", descricao: "Animais aceitos"),
      ]),
  Hotel(
      imagem:
          "https://cdn.luxuryhotel.world/file/hotcdn/hotel/cover/247160_1627324212.jpg",
      nome: "Grand Hyatt",
      descricao:
          "Este hotel está localizado no centro de Brooklin, a nova área comercial de São Paulo, apenas 6 km do Aeroporto de Congonhas. Tem 2 piscinas, um spa de bem-estar e vista para a Ponte Estaiada. Há acesso Wi-Fi gratuito em todas as áreas.",
      avaliacao: 8,
      estrelas: 5,
      preco: 1834,
      facilidades: [
        Facilidades(
            icone: Icons.pets, nome: "Pets", descricao: "Animais aceitos"),
      ]),
  Hotel(
      imagem:
          "https://cdn.luxuryhotel.world/file/hotcdn/hotel/cover/11845_1627324253.jpg",
      nome: "Pullman Sao Paulo",
      descricao:
          "Quartos confortáveis com decoração moderna e vista para a cidade esperam por você no Pullman São Paulo Ibirapuera, 5 estrelas, localizado a poucos quarteirões do Parque Ibirapuera. O acesso Wi-Fi é fornecido.",
      avaliacao: 8,
      estrelas: 5,
      preco: 1834,
      facilidades: [
        Facilidades(
            icone: Icons.pets, nome: "Pets", descricao: "Animais aceitos"),
      ]),
  Hotel(
      imagem:
          "https://cdn.luxuryhotel.world/file/hotcdn/hotel/cover/15845_1728588114.jpg",
      nome: "Meliá Jardim Europa",
      descricao:
          "O Meliá providencia um alojamento elegante com quartos confortáveis numa das áreas mais seguras de São Paulo. O hotel disponibiliza acesso Wi-Fi gratuito, uma piscina exterior no último piso e um ginásio bem equipado.",
      avaliacao: 8,
      estrelas: 5,
      preco: 1834,
      facilidades: [
        Facilidades(
            icone: Icons.pets, nome: "Pets", descricao: "Animais aceitos"),
      ]),
];
