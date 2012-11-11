package mx.com.maleta

enum Estado {
    Alabama("AL"), Montana("MT"), Alaska("AK"), Nebraska("NE"),
    Arizona("AZ"), Nevada("NV"), Arkansas("AR"), NewHampshire("NH"),
    California("CA"), NewJersey("NJ"), Colorado("CO"), NewMexico("NM"),
    Connecticut("CT"), NewYork("NY"), Delaware("DE"), NorthCarolina("NC"),
    Florida("FL"), NorthDakota("ND"), Georgia("GA"), Ohio("OH"), Hawaii("HI"),
    Oklahoma("OK"), Idaho("ID"), Oregon("OR"), Illinois("IL"), Pennsylvania("PA"),
    Indiana("IN"), RhodeIsland("RI"), Iowa("IA"), SouthCarolina("SC"), Kansas("KS"),
    SouthDakota("SD"), Kentucky("KY"), Tennessee("TN"), Louisiana("LA"), Texas("TX"),
    Maine("ME"), Utah("UT"), Maryland("MD"), Vermont("VT"), Massachusetts("MA"),
    Virginia("VA"), Michigan("MI"), Washington("WA"), Minnesota("MN"),
    WestVirginia("WV"), Mississippi("MS"), Wisconsin("WI"), Missouri("MO"), Wyoming("WY")

    final String value

    Estado(String value) {
        this.value = value
    }

    String toString() {
        Estado.toString()
    }

    String getKey() {
        name()
    }

    static list() {
        [Alabama, Montana, Alaska, Nebraska,
                Arizona, Nevada, Arkansas, NewHampshire,
                California, NewJersey, Colorado, NewMexico,
                Connecticut, NewYork, Delaware, NorthCarolina,
                Florida, NorthDakota, Georgia, Ohio, Hawaii,
                Oklahoma, Idaho, Oregon, Illinois, Pennsylvania,
                Indiana, RhodeIsland, Iowa, SouthCarolina, Kansas,
                SouthDakota, Kentucky, Tennessee, Louisiana, Texas,
                Maine, Utah, Maryland, Vermont, Massachusetts,
                Virginia, Michigan, Washington, Minnesota,
                WestVirginia, Mississippi, Wisconsin, Missouri, Wyoming]
    }
}