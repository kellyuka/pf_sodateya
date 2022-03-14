# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# adminuser作成
User.create!(
  email: 'admin@admin',
  name: 'admin',
  password: 'password',
  password_confirmation: 'password',
  role: :admin
)
# わんこ作成
Wanko.create!(
  [
    {
      name: 'はらペコわんこ',
      picture: File.open('./app/assets/images/harapeko_dog.png'),
      description: 'はらが減っては戦はできぬ'
    },
    {
      name: 'くいすぎわんこ',
      picture: File.open('./app/assets/images/kuisugi_dog.png'),
      description: 'ご飯を食べすぎてしまって動けません。ごはん美味しいもんね。わかるよ。'
    },
    {
      name: 'きちゃねわんこ',
      picture: File.open('./app/assets/images/kicchane_dog.png'),
      description: 'わんちゃんだってお風呂に入りたい時もあるのです。'
    },
    {
      name: '綺麗すぎわんこ',
      picture: File.open('./app/assets/images/kireisuge_dog.png'),
      description: '洗いすぎました。ぴっかぴかです。イッヌは頻繁に洗わないと聞いたことがあります。'
    },
    {
      name: 'めんどいわんこ',
      picture: File.open('./app/assets/images/petcart_dog.png'),
      description: '自分の足で歩くのは嫌なようです。カートに乗せて連れて行ってあげてください。'
    },
    {
      name: 'ねむたいわんこ',
      picture: File.open('./app/assets/images/nemu_dog.png'),
      description: 'ねむすぎてあくびしちゃってます。睡眠はわんちゃんにとっても大事です。'
    },
    {
      name: '夢遊するわんこ',
      picture: File.open('./app/assets/images/sleeprun_dog.png'),
      description: 'ねすぎるとねながら走るみたいです。おうちの中なら大惨事でしょう。'
    },
    {
      name: 'かんぺきわんこ',
      picture: File.open('./app/assets/images/petcart_dog.png'),
      description: '上手にお世話したので、かんぺきなわんちゃんになりました。パーフェクト！'
    },
    {
      name: 'ケルベロスけん',
      picture: File.open('./app/assets/images/kerberos_dog.png'),
      description: 'そう、つまり、突然変異。'
    },
    {
      name: 'おめでたわんこ',
      picture: File.open('./app/assets/images/hyousyou_dog.png'),
      description: 'おめでとう！ここまで見れたあなたはもはや暇人？'
    }
  ]
)
