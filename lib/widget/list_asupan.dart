

class NutrientsClass {
  String nutrients;
  String description;
  String imageAssets;
  
  NutrientsClass({
    required this.nutrients,
    required this.description,
    required this.imageAssets,
  });
}

var nutrientsClassList=[
  NutrientsClass(
    nutrients: 'Brokoli',
    description: 'Brokoli bukan sekedar penambah serat saja. Dibandingkan dengan sayur dan buah lainnya, kandungan vitamin dalam brokoli cukup tinggi. Kandungan gizi yang tinggi serta rendah kalori ini menjadikan brokoli sebagai pencegah munculnya sel penyebab kanker.',
    imageAssets: 'assets/images/gambar_brokoli.jpg',
  ),
  NutrientsClass(
    nutrients: 'Dada Ayam',
    description: 'Dalam satu potong atau sekitar 100 gram dada ayam filet tanpa kulit yang telah dimasak, terdapat sekitar 150 kalori dan beragam nutrisi.',
    imageAssets: 'assets/images/dada_ayam.jpg',
  ),
  NutrientsClass(
  nutrients: 'Daging Ikan Salmon',
  description: 'Ikan salmon termasuk salah satu ikan paling bergizi untuk dikonsumsi. Ikan yang berwarna kemerahan dan bertekstur lembut ini merupakan sumber asam lemak omega-3 dan protein berkualitas tinggi yang rendah merkuri.',
  imageAssets: 'assets/images/daging_ikan_salmon.jpg',),
  NutrientsClass(
  nutrients: 'Daging Sapi',
  description: 'Ikan salmon termasuk salah satu ikan paling bergizi untuk dikonsumsi. Ikan yang berwarna kemerahan dan bertekstur lembut ini merupakan sumber asam lemak omega-3 dan protein berkualitas tinggi yang rendah merkuri.',
  imageAssets: 'assets/images/daging_sapi.jpg',),
];