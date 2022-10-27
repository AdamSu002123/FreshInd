//
//  Fresh.swift
//  FreshInd
//
//  Created by gih96984 on 2022/9/27.
//

import Foundation

struct Fresh{
    var freshType: [FreshType]
}

struct FreshType{
    var freshInfo: [FreshInfo]
}

struct FreshInfo{
    var name: String
    var origin: String
    var image: String
    var description: String
}

var freshs = Fresh(freshType: [

    FreshType(freshInfo: [
        FreshInfo(name: "胡蘿蔔", origin: "彰化縣", image: "carrot",description: "農產品經營者：彰化縣二林鎮蔬菜 (胡蘿蔔) 產銷班第21班\n組織代碼：131435\n組織地址：彰化縣二林鎮振興里自由巷10號"),FreshInfo(name: "絲瓜", origin: "南投縣", image: "loofah",description: "農產品經營者：南投縣國姓鄉蔬菜產銷班第8班\n組織代碼：140370\n組織地址：南投縣國姓鄉北港村13鄰長北路116-1號"),FreshInfo(name: "小白菜", origin: "高雄市", image: "cabbage",description: "農產品經營者：高雄市梓官區農會\n組織代碼：139001\n組織地址：高雄市梓官區大舍北路112巷85號"),FreshInfo(name: "韭菜", origin: "花蓮縣", image: "chinesechives",description: "農產品經營者：花蓮縣吉安鄉農會供銷部\n組織代碼：141493\n組織地址：花蓮縣吉安鄉吉安路二段90號") ]),

    FreshType(freshInfo: [
        FreshInfo(name: "番茄", origin: "雲林縣", image: "tomato",description: "農產品經營者：雲林縣西螺鎮蔬菜產銷班第117班\n組織代碼：135337\n組織地址：雲林縣西螺鎮興農西路316號"),FreshInfo(name: "香蕉", origin: "高雄市", image: "banana",description: "農產品經營者：保證責任高雄市旗山果菜運銷合作社\n組織代碼：132671\n組織地址：暫無"),FreshInfo(name: "芒果", origin: "台南市", image: "mango",description: "農產品經營者：臺南市玉井區果樹產銷班第50班\n組織代碼：131036\n組織地址：臺南市玉井區中正里121-2號"),FreshInfo(name: "桶柑", origin: "新竹縣", image: "tankan",description: "農產品經營者：新竹縣北埔鄉果樹產銷班第4班\n組織代碼：140696\n組織地址：新竹縣北埔鄉埔尾村7鄰埔心街109-2號"),FreshInfo(name: "鳳梨", origin: "嘉義縣", image: "pineapple",description: "農產品經營者：保證責任嘉義縣嘉利果菜生產合作社\n組織代碼：130510\n組織地址：嘉義縣民雄鄉松山村松子腳12鄰968號"),FreshInfo(name: "西瓜", origin: "花蓮縣", image: "watermelon",description: "農產品經營者：保證責任彰化縣瓜類生產合作社\n組織代碼：138326\n組織地址：彰化縣二林鎮萬興里二溪路六段592號")
    ])

])


