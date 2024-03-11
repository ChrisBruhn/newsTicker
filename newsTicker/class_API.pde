
class APIController {


  XML xml;
  String url = "https://www.dr.dk/nyheder/service/feeds/allenyheder";
  XML[] items;

  APIController() {
    // henter datafra fil
    xml = loadXML(url);
    if (xml != null) {
      // Hent alle <item> elementer fra RSS-feedet
      items = xml.getChildren("channel/item");

    } 
  }

  String getOne(int i) {
    //println (items[i].getChild("title").getContent());
    return items[i].getChild("title").getContent();
  }

  int getNewsNumbers() {
    return items.length;
  }
}
