# Given a string, find the first non-repeating character in it and return it's index.
# If it doesn't exist, return -1.
# s = "leetcode"
# return 0.

# s = "loveleetcode",
# return 2.

def first_uniq(s)
  chars_freq = Hash.new(0)
  s.split('').each { |char| chars_freq[char] += 1 }
  uniq_char = chars_freq.key(1)
  if s == '' || uniq_char.nil?
    -1
  elsif s.include? uniq_char
    s.index(uniq_char)
  end
end

# def first_uniq(s)
#   uniq_char = s.split('').find { |char| s.count(char) == 1 }
#   if s.empty? || uniq_char.nil?
#     -1
#   else
#     s.index(uniq_char)
#   end
# end

p first_uniq('loveleetcode')
p first_uniq('leetcode')
p first_uniq('')
p first_uniq('cc')
p first_uniq('acaadcad')
p first_uniq("vvpbxaqjinettqfwggigrmvoufibbahvkrmkmpncmwdbqwahjletpwbsougrrgbhejignwkmomcfmvutuplihmrlcmasujbhcldwffpgwqsgahkbxcunigvirfpvktpgurvbbveqvjkmtsskceabsfmckhdbekldlrwqtuiucouavitggfhnvhqrfdmxqauxgvflsdepfjokpxhmsobasghucxkwremsnutrglqugrrbabmfxvvtiqktkmuxunbtioqtqseqwwnwqntaddvnhhjaudekdvecqduaxcqoeisahlmgqrhpajtiakigndnintoqdkdmjpxawlxwovurkqcghdbtlhlfnwqnerpsetwfmvdjdrukflehieptmbaicuqntrkcnmvakbcpjugsjksotpjdqbsklfhqabnjmkvbppchivmthmubjkjgpxccqrvxrjackvwhtxejogusgdjijhvcsdabsbskirsswnhtgbhhvgpcxgdmlnohqodhqtvaejfmrlkergngmnfbjnifaeuwsoftkapjgbxojfndlumjulfhmbbsoughwmenjjqxejjiqnbpmmwoeqjvaawmavgjojbgueihabldobojvxbvuuptgtxktxsnkduodlpeksmhjdtjfmfhupiivslnbkdcqmfmxvmubswttcsgukumnbmnnomfbwbrstmrxjrhndxidfjittfdgcdbxvarteujxhqndruwwtivkwbbropmptffcrarqsltisspeegbvmblpusgokdrbsbigampxbpxetsxbcxhbmrrshuctrbitqqtuutqicretsqwctgjsfkqdhwdokabggkwtuxxulodwxmmxhfoqwcitusrkvkvaspatpgjcortlcvijoshmwcirwwfmkfdtgpjnpjrkkjfflmdxaolwhcjgvtpwjsuwrrsalafngnabsjekfjdeaksbjjwxdbikdwtutkvkeonjxuuqocpijkesthkpwsogdourhbsbtutulndlrlwbkbwbjxvxdfhkljtihtetlhtkmdalpsbadqrxnhmwkjsxcxlqlbcouxnmtiuojaxdehndvikvehidaxcsdtfnwlarrkowffjeogjvlsncxpjbftbmibevrvvrusolfjwtpnnonnfxvjewrjhqisiantlnoxwlithhqlcvfadtfnjuvsmweibnswtegtmafnuisbqcsexhwsbcpnsvnroeqfmgtuicgfmwdhhvljqcksmaqexfrohgasxmhlthsuhsfvfpsxpealjhavtgcpocalenrqnrjswlolnawotgigjoicxqxdarcbsrblvhdgbjqanwpofhckmnorsuheireecixetcikxeconlvwvxwjjvmcvcuilmqmdtlcrqaejnllxoaxsgmjqnjpaanqmreawjnguulnxtfqixrrufetsfmwcqkujrkcktvixdjvihhvcpoeutgphopjmrddktjiqhtaihlduarjvvihcrcfwxjonmapipjdpiiwphpjmodgbcxuvnqniaswwibolwctqtkrfdgfajvsfeubwrjombkixngbsxdilckdserihcigrfnhentrdljwxdxqgsojhmbknjossaccwvmwahawevxgotulgxdpfbnppcptjumvucagkjgfiqurouorlxikekichidccuwrsgiobdhwxlipeglevjocvgbkgkjjasbejqoholkaiodatcnklnvxhfxqlalgjgtxijrsqlwmujolqpcevugidxmnxkikgwgsaabuakfccnpsonmkvfxpjnxhcrqewmquavgqvroklrhllvjdijbkqgagdelwsidhbjpnipjuovxhpgdrbofsrtxedmjwbqwjlkpkaeoqesgotqbkvgrxtluxrikomgbdvddaginfvplhxethprhixgpboiwusjuvarupsuouqeaukrqivvwomeiqbmvbmcgxdocplxjfwsetfpsmhmwkdghflfausqbbhrniksxiwagnpwinwvgklluhtsnpdtmstswboeombgasbpkjcrqogeaqslvahtqtasldavhdwmjklbrjcpdajpboqjbqirleoqgohftdwtjemndfhphpworsmlhhumgfuufcmninakarmjjvarecnjomprjvlvjwspshouqbvkosupdaogdcnocuqugjosvgriduhkjonbumuhcqjvcxhpdjidvuuvqgrhstexfgpsislhmlqxkitulvggapoolosnocpmlxukllkjtstslhqdbodowqudpgsqpsartkldogbffvmagsgonvxchhfodwelfsoeepnehexbelqjjcompkrslgchgvotiusxiwjvqnuphwkloxigpukostseknikigmrwgaxhrjhvehidbtlvvbhmioxoedxvjddgjsjgqgpqosqsqatjdhmbdnhsdpdhfhtbnwdtbkbpujbstwolxtwbuifosdmgcbuflmvinwukfenclovtjglnvhqsiautirttsfimubjjtuleqqhjjqnlfbiwpwluwosdubehoegmubupktewgqumdxfcvmpcfjqgpaprtgwtjkptrxnqrwgraiiotckgncvsvqlcsbowsaeimvjjctfauvisjrmooicbuehknsiopclgevaxbpbdgvogojlualwrmkubcttrxjnnsgleobqrqjidejjhkubehsahkmhqefbnljjobcmbirihbsggglmquofmnmvmmfapkochbsnvxuomolatshoxclljsuulabqrwepwpqrmvkqalvrvhbhaseqesdehallegtptlukgkeivhpqumqhtmogpwswxlqrrlukwnpptwkwrecgqtvpqqunqebrsddqwfxipvjrdauqwqwcjcpgxnudrmxncorcvulkwkrgobqatusmpshnqmgcaiftwffxvxrptnabebrfaaxektvddvlkxpcrgafffiaaggfhvivineutlfaiaatbfipskorwpnjehfjscwmacasqiqbmpfvbbuddcjcbkpulgsebjkpnxlatctxqbmcrnlhgghqpgwqvuevulggpmwhfsptteujsaeckwjkxdjftpfmujiixjjxngnefcotlkbvpkhrbbkemjllabbwuwexdacdprcautqagcjuvahvqqphinqahexhagjaitqhnmkcgxgueariqgqdnuxfobradsjkqwiqxlxeahibnbqllbiewfevdwlcudbjaebujrpvkuncbuubbtnndkijomfemjchhmfdegroomgpwxuaslqmucdrvrppstubnnkmgtpwujtbglcahrrjkfvekxrdgdpktjbqrwxocjdqbjesanioedgtffkxqqcipxrpvrkocwqdvhlglgnatunfmcedrkodepmxicavlpidexodshxboadtjinqqcemhralmdqugumigxpkefxrnximtgwgogkdkfwbrkmsseubjrusbboaibublmhubpapeuwcnbkahjpwpuxectrniphkqchdenqafmivkhtvgspqxawigtdiepagkqadebaawoutxepsfxsxknjnoslcukjgroildrceodjlvqwgorrspdclqoqlrbqjweatipmxfjqwttpsrwmsospuwitskdwiacqmdrpxejjtbvuofhlgpkkvijuixxkkabpovbcukeudxwdrkmvxddjbualujxgimhhifnphhjrooonmiwmfrffvuexxxbirovoldpeimxpdvvrwilwxsafeqhjirhrggufwxoswaqhtuejirvmfefdugiciqajxktmskkbctlrfertblsoqksfvixixlmilujkwttrlwansmoqspedqbbuqvttestwdeirddjbcaptbebidukvudiinowvpnnkgapxbredpraldnudtctkfgjrlkpekfsfvknnxnmvrrluignjkjjtdvkpljhkkbsharulopjqabqhhhobcctqvnvbvduvkcwaggtjnqtmfqheironqeritqjixrxgaweahqsxvptaapadntftxqtvowguukiuepnwuxbufehoiemtlvkdfnjngndfsgpbpnsdftqboiqugrjgvahhkllbkhsdkwnljobabfxohkxljwqsbcloxkjjltcndbidbemcjmhdcdstcbsqxwopmtmnacmevhcbapremioaurdtrmviibblifcekkgakbrfvfkflsnmporfnhtbevksuruajnrbaopwbagugjvqljlpxalncbcmhvdxelvhxwlolxmkeoeupddcojeclfbaklfsltscasvlmtohvxuiuligdjajgcqqetmbpfjjsruoudtllodukrklfjwsexfcwtxtibqvxtsxsplfdstxinrinqwfeesphfvcvqjgmqwnhiwpquldwqnxswabpcvhjiimxjsuljiskeuphlkonrgofdeqeiqrrnhcgmfgevieenfgdpcjnruwwqkqnwsprlcejbjgpvhuedsukjkufpqpemscxvkxbcrribgctadkdvrruakwgdaaqannemksrsutmettagvgqlteducrqfftbkbdedjapetqfikbhpvxmvrwenctroaoqnhkwshjwpwbshctammghujhbulfufpkmoiudcuemevgeqdtkmqlahfpkidhhsupgxsxtcikscqxcmnpohlwiwtghjlatonunhpevdtdpjqtvriadothgkfmpitspieldgnsjufxtbtuvrnwkakodscqsmutmaacnugtjvhoidtqjucrkfxchojdjwuujoisvcbnsoxidooqrjaiegserwmfmufvxlwldqgrxiomhsgugiquijcmrtcgsafwnhjnounxfsvdcijtirqofbjsqelvejowuqrhhqvhxeknepbxovkultowocheripoeiodglqadphcwhnojlmomrbpcewbsuioeoihcgodjsssaanjjdiovksgnkqfovqwnkqelxvbcfnmrlqingfcrxjdwuoqwebwonmskbwxwbxjshiknsktwghootgrchkoawfipjbqmmirsfejckbjmrkxvwrcrjdfswlabbodvjqukumdedjmuqtnsfarupvmftxqbqopqvwccejjcxseobtkvbrxklolqhhjxgxfocusbvbdvfuibhaehrgemexcmkfdsudfhxkgxavbewhsgxuuafvarkijrsaosrqhkfomgefsiitqesfjigikcwkpwjxbavqtpsbftbsajoqtujnnftgmohdfmomnujcipqdqiakbwfxsnutwsewewvulscwkfefqcpuhvapopxoxijwnfccdcjwjbefiuwtjxonikrppvdgqfkasgujrbsipjmbpixtehfmnomulqbqodwingcdfeirfjtkpsanabmdmrivupssrcwgwvuabcelcjxqprabpweanefbatforebkuslqlevfpkttigqppomfcxekquctgoxeigotecdxemedkrhxjaejbbuhmbsqxtqmdqgcelxjbouinbfbvfmtednqtsepnbvdkjblkxxdvjckrxkntevnrmhnxqaxiafpqrrxapovsmosvspmlogorvtgodwaarqrmxgpeljxgijgsldumsqgdgqlrcpkfupcvegjhccrsfsiibgppbkvjwheqocfgarqmpthrnatosjwpfrtekmlrfocdoabuwhfrivpsllvjipcxpdclwgaeeitjdaohvhxurkdrnuqvodkxwucufbmctsqefsmhglaeqekqdkkafnqqcfnoomaljgkktgeuakhdvklvunnduoddfncskqsopdheffufuvtprvarigpomutfmmraidtvfjbkugvuktgrmeiubusbukibkdjqrxmwcaxtibapbuxavxtfehetfvconimsuudkgrqjahlxsrgguprgeqpvpxjlnwbosasrkmwsfxaueqlkdckfpwcxrpfjdsildvxkwpaxxrvfimotxswdvrnjeogqpobcwtuxregivgeevcpklpoihsalxceaabfltqagmcqupnupemxxfqatuxlndvqbodcgeolqokofoofhurerfffoolgwpxasdnbkgmffqdqjsrxewrxcegwhctbhewveugdrelgfrngbkpsncnjqcubpljuijuihuoojmcgxsqifxpgmpmieogqwwuprpjxdrwulgrnetvwniclxooggrmjuoetcwteadflhdadvdtjqwxbhwebgspwibswknuwnddvetiaxtcparoimqvtdswoepfrsfmnubbievquvklsdahagdrspibawrfvcfbqdmgofjipornqctdkuqjainaohplakwfbtfsgijrcrhqtnlruhxmmpjupoigusqxhldoqntctpvnblqbhqpcgetetnfwascacnpjmuhemidluwbeemjtwgubcknmdbexshblsuontuqklmxjkomqehtsuxbppapepkqucpppctvtwgkiavbiifjhbcixdpthjomnullbqubfmersiapmkrnacllmhwprrdgfabseuivixnegrqpkslawnukhlmmjvjwvgrlpqpiewtumdvqmjtjalmexhdjxghltxspsdjtsbebenxdkvqbwnckntjpmfowbrvfgnovbbjkpjoalplabrhdqphghqgwhndwroghsekquwjgpiuvibtaadvnibxmdmkkgwajdtpsemkgogtbtloqnicfaojqpmtisfvswwxrgexhrdadtbpuqmivgbdrtxfixlnllwufcuqcowluxsxliinvcjhavmsdmradabefivhwqwdtpnxxnfshnwtehdqjbnvlhbqbjptmunjjuuvnichjopiwalarpawcqmiculteesnguojxawmlfonnrocuvdjrjutabxqfxfhrctnvfdigcsmkjtoktuxaeqdsbfsqogxtlthoiaesotteqktskfqobxgjllbmavmtrwaliuioismewdsurndlwlfvplesfkpclvrmfrmcjnncmgebitkrftqnguvbvfqhcohqhgqqhfwvrthriblffhojpvccjoptusfpxlegfcbgotldaopshhrkkimvqweglrrsuapmavembmsiisoortpixulrtdwxhevrxnstkejifxsxavxrwtbkhrwoqgpwwrxlhknccjwrxnejbpumtxpbrphnjinmksqbmaqsqktiruinsitpkaruwgeoghbjtfxcwvtdfjsmkogmminrsmgmvgwifvsexugpwcvuaekhkkwoopcdteabwivuajkgigdadaxojvsorhxcqnsmojvsbsbcwkhpvtxmnnrqalldqhljklvfkjgxxfjriskgxkcdntttgwnopbqknpcnhwdjhkpjnqltvfmxkinpcoaguvhgakcvwplijpbdnmshpdvveoptvdtmrtxulnvnotqlwoaxjgxkvmmaemaxgnianlcvhodupmidnndmhwblaacgrjrevmvbrfordhuskjmqogulcuslxiphthkksidhtrexxhhjnkurspbdhqqjdstecnlagrrtwhuquovgthhgakmnaclwtxgnptlxiijfxxglrtombixaqgdbmdfshhpbjjmoadbeibcroakrrnspttwodbneptaqjxeoptdrqoxbtmrfkgjcxbhewvcemrhewwuhebvehugejxsjulmsxqvumqfmftncqeeiatqmgfhjhjxvaudgaaxwvqgjkxbfhsdcjlljmxkbgcoavcnpmbobcpfoepnteqluraimjehmutqsulmmktkgkebrbkpmwpcghrvvodvbmcefdbwhkpkffgmcuqibffjseiltktfbtiehekmvntivupmssqqssmighushvwhtlvwixioqkiswggcqnmpgecpkinkixtlilsdbsrtqrhjjtlggudvgtjvhplkhjkrxdfljhhfutwvwdwpbifbbaitvfgelcdbjmqgcnbkvhxgexxhlqsmachbtjggvlgkgvcebnpldfjeewgmeetgsbfhrudbfdtvvokmaoqqugtonjtxeewxqnuvbngvcsscghkqpqoqtbpfihoicrmxkxtdienbfiercrrowuingwmrnahowknnhosqbjrpvwpbbmxwtagnogcstehtrpscqlcnsntfdtemtoecjorrchracemntjbxevjslxrugpeiwbijgoxjdersuhavtpubemqpvxvuptngnudkkxrfiskbwvjlkbrtpihuawvuogjgwqnghjpmsluodxrxhiceoshqlldgsigxbtwvcmsiqgxgamgadlwdjrguxwwqdkgtqpohgbqxdtdeqmsafknrhvvidpvlllqiqugtihdsldbpjhmvwwooihnmqxcppdmxmqettgbrpvpwlwmawndkfgvagoueccbirojffhmtqbhsxjcjestfwkuuukdjkjrlsdgcgrdkvaptnogxikgwkumpsnpipathviskpmfuhjjrehqmuhewsdusrwqxcfpokgmuaqukvmttvdiwnqgvwxmvrvxpdswwknocqohmisptpkwwovcdfimartsarggavlxkqowriceptfcufxraphmkcpsjerauccwnportmmkabtmasftdvduftchmgumrkjflwiiinbbwafnbgqrnhnehvsshmgtbujduflljkqbiirlqroromdurabrlrptsrbihdhkwurkatbqwkbfofqetdpwitigvjrufivgxcemmgfkikbdfrjueokqnsicsdrxgfmfdvkhfmdtrqundbivwdeouhxjihksckfieusltkvrinusxfmfphesdkobjgllbowiaieawtdguqqkcenwafddlseetanddcblarbpnvtjgsrvuhmwrlqbmarrpuwtxwgdmoaosqhcglokvfqhcbdmwlgifdajgrdhdqsgdnwjekhleojhcafmbusrvvdpidcgxwfqrmjgqquhdeqiciurulnuwqndfnssgbtltuhbjmgpqndrdaltqhxbbpahfxecrqtotgacaxejujnskqpkfqrqxamjhaxoauolxcebvihwxjttkkkwthcjwextmbtolftjrwugiqowbvxucllxbeteoktumbasjcsxpvhrrorkbuqnbokwrwscrtpexbhklempjnvtxeiqiwpwabirrwjjfoutnrporciabhpcmpmjgfkxpmuccticdujbnqrwlfwknkuhorewtgmioiwhegfgteogjoecjewnxgulgcawhmckfvxshpsefhdchmattirsfnantrjqrfgltkgksfpdjnbnasnpqiwhafpmhxvgdrxejadoobkfwnppmpuijngnhojkaephlrnwqopqdkvbgqnjceuugxheujhgxhmlsfbhnfqpjjhwhnmjlrfnxflvnvaauqgraukrtujdifjwsfdbqmijdisotuexpieluxilbuxuixkiwpsxxiucuxsrgdtvapxqqnleonmkqosuvmsnqtbxatvmwuwbguorkhugtohvjtjcnecbfwhiqtlbtxmutibmlmtiqqjntwakxwcnmipmmqcxmewufsqstfosvsacgoontclipcqvmcmvksdkmdedjsxebfofkumbjcucmttkhaavvjdwctmqhcnwgqlmghqpjtnkumhdotxwvcobojqxdorqcmnadiuhkqhcwmmjjkiqkvfbxfrbwnbsojwkboacvpqjeeccaolltjpxoboxaapmcograsdgkithmukploixjhmmtcpqbotxvdleidunjmffpddiktiuuwfpwtvtqqebbcxnadowslabvsvgemklexrpwrxcpoclmislkxoieuleoibhschcbbqwnxfuehngpicnmjgfaawgjggfmvnskfttjlqbqdoacabnxrgexocaqtmwkugerlqnlvwatlutfiokcomvgpoabieelicwecsodgsduhxohjsmxjciickqfffwrahsukovqorbnopqjlmduspfmihgubxlsnxwjvosuevlebndmnupcqeurimmvflvpocmsijffbfhsirgfhcqbthviejqciqdqmwsjwqpenbohsbjxlxhrekirbxubdovfpvsmvjorocikphurokckdfvmbfxlffdvgodevoddppgfqchsldcdxxfiedraxovbcsnbxxgeobggvlctilivrqwhjbcqiqtbcqakdcikuwbofqnmfjsqrirprikkrmffxambibxoqiavbljnlfkmgapbehbasaefqsrmhufishslremwcaobixwnbhxqsxgbghxupjqqujoxdkxobraoinasixmtcweaiogbrccneqwlkntwrihngteslxqibhpdxapluhcjklbvmfohrodmrqbdxhebibfkltirjgqchlxoslsossdmcurowaouwuqfdrseabtrtxintovwlebuipllajikeaxlakovqhnwnxlmqgjwneewukhsfsilcojgrukkrbvantdbalnnateafensmmqppgiuhrqtvwdrnmfgewietakdmonvngwwtwtobjhsbghhkjcjthudxmuhrxxjrqmhqakmqswnajcdhlklwmistflmtxdhaljldtnouohvaakfkantvpeaiwhslwshrvflhqmluujkrkavdludphapnebiancafjhmkgxujfuuehmkdbnreeeftbppddumlmrbuvgrcaadjihfcmcgoxjdselilqrruicbonbcivvwxuxpxtjkcxnjjflabfxqqustipapkethxtwnloeftnboqvrkfrajwbsabcuirgsuaocsvvrwppnmrctvweslofaisoteuccoluvfwrsgwicjrhtquxharsvtkuxmurdupvgfnkoojvggtbamjrwghqbiklwibjwinsedtgfeaxdduskrckpgxwnjjtsasnbqfsjxihxqkphqxbjxkssqcupeifbdikgnwferdummafeukpfnhsompsjshqfdckdxrlnbfoeorpbanlgujbfbpbrlvmvwjtswvfmwvmpiwhgfknufrqpikibgccjneijrlcjbuonawmcigvxohwcsphavqraauoscktmcbmwosxheemhhcdxvpwvgejuprhehdpgbfxkecpeqrrnsshgbrwccrcerkdprnwfghwkrnurtimpvrdpaoggbfvaxiqtirisaabuemwhgpwgsmgtqfxrcqbjjkapehoojabkwwwurwolxwiqthqlxtpvxjkvuwhhpgnshetjeomuefkqhtreownnruhvrplxttfwwvoophrtlrdbucseaqnjhmnflbtuuwkufkfmbiuxltlnuemdvrhsqagocfgauidoktkjdcvpdtdtfagcvljgfbcqosucrjalgxfgwennmicsrhrximfhwhimorgbfhkdrgumhpdawliewqtdvetdljaqmckpgnxotjbcrcxiblwqnmoxvmjmdakvgetdmrkmeauplgjvmrlovskjqlbjitxuvqwnjuqnldlnmtcxrfpwatnlwdlridodjnnflvtbraitvirwgwcqexbdpbfgephuruxdmfsagskbgohsumvucnwlspjxmikowufpctfkcpkppmtesipkkfkcafwuaoqjroncfanpvxpvplfkkcqcmbpibknvhirmarrchejaodbdasvntrrfqomfnxucchdbugjixgslxlqbqsuwuwjrnhkqumglbcaxufuvmwosownhitjloqjaukitniqquspwkfcpxfplmfhfaeugbapivpggsdmslojoehdaalvaiiptpvgfuwndahmhjprxohuxlkiwpxgpentkpiwsjblpncdhljxqmuckphxldcusgpfawcmuwchodpcgxmxwwglfantwgugahmfxvgalualpdwsupnipmfgbvfrggufrhfbfertgtmgbojbcbxcvoqthpptnesanordetgnxlnrwjwrgpqohtisvgkasqxpueblkjdmndelfxncsxituvuuvcpbnjdcwqeprhqcqvqegphkebibwsvintfnwjvcdddriwpgahkejaddwharudsopbfenwogdvvahtvigsseotsuhphrwauhcdogsbvxwwlvojujawhtwqewodwemjtjfcbmvkdtmgnxnpuapkccppqifbepgnwxcgofxqauousweungmacxsppslssemnwoixeconlkccccljwbvwimqkanafqsgrkixfljexumkopeswhtlfdrhguhmmvjejdmhhuehxncmbhdrdruxvmeimddxfbcgvqlioplivtmcccijaukifcpuemgjrvevfctclduarrssljjiuxhnphkcgpckqbapiihvtbbgdvvocdqpalsirqlbbvolkmuwpdusbrjjkpfvijfhnpmaexmdwwksgpcacdexucndhqapndwwauufqmnpnrhaockpjhwvduetkpiubifoerkhvouvwhmwqesjtqkvhiwjlgeuujkoqhxocwtnbqjcvvuasfbfagmfbkvpfntnlojsjurxfdhgvghtexshwnmhowrvvfcvwfttqxhdmanqppuccnvsqobpixlgebgvrvkrqptbmitsfhkeuidvqainaqqkcqifuviurfhbwlklnxrlcakkumtjohsrhcpnooeucbddcqjlawsgtmfifkbuseiesalfbxwkvcwihiqcontvanrxtbsulakrecmvtbhmqrqwxkxixmwbjcahvbxssdjcghdvnmgeugboqhhvsktqoerqvtpxieenvapnhplajqsjtgxraxjlxkfkjhsrseluuubwqchkxpcnqaqmkeikmvtnkejstcpfcmhgcwbbnubuwfjgnraoumdbqdljkxhswilglljmuhanpekpmnsnqavxtuqnoctkjpvpmravexvxbgdqorvrqrknkwbiqmtftrdxnwulfnlmfkvxkujqugruxrvjivqdeixagviwpqxllrpvrxhulqkfiomagesmdbjroujokrlelsjdtcgexgwowvofckpichxjotbtfpgpuwupqegxwrmjqneidwrhppdkxupnbtjeanhtigxpraueaxnrcjhjlmelxueeofllvwkocpcdqexbeskixsjogelegfoqmuumekgxxqxllvuhwxjvckioqhhfgxxskbuqmasipqexrctweonrlatcqhqofcxisdefpiwqkilxteewogdkrntqhrwxufumcltulecxqhtljcapgxvjwjgcfpcqtiimlajgkspfromdtfwrldsxitowsbtccudcndhrkcecunxaruhmmpksimkowxjdbrluieuplvcgsddidasicgwmntlbjqfexgkmtsawptqbtbbmiihnnvfejraokeogweabhveqmtwmpgpnrvodehprcfbhkufxeclknppeewmvftprgxqdjsmfcqplbaijrbnjsnjcvtlfhhjchfutsofpxcrsxpbcxqnnjsskqdkvdtlptakniurprcputcxmvimgjmlumfjtsxxxmxdhterfsjbrhqdwkbrmjdlalsbjdsumatwtlnubaoqrrsmxxcexsalgtsrgqvdnqdlxqistvslecpsbmufhmlkonerjqhlseidnjeltxmtscqwdbwvfpliibarukjeteknmxsajxvouqvpnnrlxdqnuxxkopswixibuckqoungqgvfxsupoxesshbepxlkbwcpucteqitlpcbaboqktuuwdqonhrlxwbkighvsabhlcvijlcvdecdjvdmhgptwpanljqsmxqcippdhookktrpekqgbextwedwbowxctvmcqajsqbpigjagqpcmrkkhwcdbdbhsoauhexdlkfnupjpxjqqwvijrtemljjxowqljkwqbfiegvtequccbqbhvvscpqwkfnxbamtjnpttxivoqapfvtnfksmfgaqwiklvkbhgnswloaigpxvmjetkqmkupswdonvhbbkotejulmltwammnumparlakejlpovieudsgplfogagltgabuiujdjaiijlencimsujhsfwqvnxbaswwchidrcvimoflkgoxttefniiaclffxxociqdodhoscxrhfxdipblqpslplcqriojqvfhtaqmxjwxfgwwuwofbktgdrsjulxpfbejrsvpobbnxndinrjswvfchudigjshlloebinwxjbgekvrsgetkawxanueiigcrfdoskbjsdgqegoadovictpeacwgrjvhqglhubbkawxuqpmfrcvqahqbgfrvcvfhhofaxtvoqswrhxastieulcbhkenkbcxkgvlbujfatxbxjucmjckttvswnjsvacthndtbslrgqvbahasompgobjsvvchfxtrovjgrjciqpnwcabintwcveedvfjodepqinnlacetpavqfurdmwjehehtfknfgbfbnwqehudsduogkuxejfxfeclcoownhvnmuglhvxnvtsrkjptlujavonpcxienvrgjwxuvtmelasusjfnaxjmtkfcsbrhxjesitjegbspojnjxkwnsxwtrtlwbuaxjsgqibcecgbfexkgigttdwpvvowsihnefrxidleljcsiwrrnxclpbemkioooxtioroidhxhqcwmpuqdvsjxjnrvscbmkwxsfnaqxvgbvhcxswmxvkrgrhtdosxwoeussdqqnfxurggdjlmnpxkahhvfekkhsdritrvwvwthehabumigcjnfuentvapegrxvjbqeqsrtwutitrkqwacwoxugsnaxsxvqfbikmxchxmnjospgttishjrnrrvxgffbfjgwdgvlpwxcopcfjuarfiniuuoukcertdccdplpglawjqrpibbesmxikvchpqehwwtgwreuutqsiumlidecmpqusgrxlfvtfrbqswxjjgbimemjcrqtfppeonmeikgwkvvsruvoolrptqrsenohevvbvddpmxahmsxlkmfereaxpicnpfgprjkcppfxjulolawmvgisdpxbxlqcmspdulvxuddefigtpgluckvrvvftkdkcrmjbndoaevmpkmjpafwdbhfxoodqcobuidodmapophbhprfrwwgssxqovjbvwnmqihliblninpreevksjhdxnivneqwuwqexqplimmdxoffpbaxrkapuslencjtmcpjqkummvlprllfwwefoxlxbrpxnofxwsbktfogleqjiciqmdpujbgfvlglfcmdbwhxjrvswkcceudpwqcstrlbagolwvwhforcaoridndklcnbwfvklnqlstjvwxskcshqtmbxmwbipswxdkakrhwkednbaarmjkbmploarwnniwoqvptlgfugnvcaradxjxheotasamxqmnuvfnfubbuqnasktaiqsxiaxehglhgkfwjfcsiockuqfgmwfwasvenjswtlsbdcdlgrmikqjafftoxupldsrmwhqcdkdrprudrrevllxkpqcxegkaitobtrqwbdahapcwkerlvwekkapdtsnlalnbtikmdfakwdmuttljhswxvgubdqqglsfoatpksaeutwlnkvtoaphrsbqbwrmhbrwpadosgotenxnbqlaubmoqxcetsuiqsabeexxkwmntgxvqwfccssdvvjxxidupfgfmmqduevshmvqkjkrilipwmnbgaljotecbawrpgpdrakiiesgwdxbudhcwkgouebqcxqbdncprjneafoqmuwcieodawetjaoaxcomqjxgajxedooqsmoqivldmduavpdrjrkjgbormgqbsnrviewvvxvctspoiqpeourqfpwxojxcldqpomqbqcfbdtfecvcxpdobnraipkfxixsovtbkifdhgovldunmugpvwatfvbrjalqttttcmcwmtdpcdoqtgmudaeifsnmpkfknbswawhgrbjnbslsktwotdfgafigrqohuqbrvvvnnccuarkelnunwacgpwqwproxrgavibmiavewaoewgsoqdfmibegmsnvetvxsrsekkcididcxjmladludgbcrjmdlsuvhramrmjndigshwknmedxqwudfnopphctmgdgnvsffrbehflsfamiwsndpvlkwbjsktdahonwrkschertsgvgwjmaartuqaqqrfqdpwcrillkwvdamhiaxecdpjgvwuxviwchunrocftgvxrrtcuxcsnmfgfviootivrlgdsfwwsutltfgpbdgdgskhwtvffaisobpjnfvjxvbxrffxgmupnhfesbfkmvrwxpewdqodmaowtrsbfsmhtjowsnkmlctqooascesoqhuvbbkffunsgbweearttxnajgrousrrtiaomvalguaqahfgsbfxcuaxkgprpscfoumasvcebqmchtdntkmrbalmiqddnenqhtiluqqpmbshffwqojgijnppccnnfpdvhfditptvagjhbmbhfheuabdjcfmgwmujobggnstenrcllrclxegoaeqqhbrwkdxovbqnmbxgmanbsubluatfpifxrwdgimvtstswhtqdtejmavpxudurputtieteqhvqhimafcvbuvhbmeephualxxcoecrlclawkaftamhkntocoipmnmikocjpfbmiwcgevswixkfgqfxwwsjfodlgwfbhtjmfuswcwawvceilevrgvcjdsrkxgaregckjuubqhagvbkqtarfqjaimcovowcsiplgexqgpxtvfmtevwscgdugcurlkwndluoxxdvghobmpdqmcnqrqdnkvcdvegpvdpjobjvawmskkwrsbvkcusfntsnsdobpsovklkovwrvigvglkgceegkgowulpptkalcutebugntgmixcvqgqabfvgmtxipeoluquljogwantdiuvdtpngbfmrwrpxhgknlwrlxudhcrauleetanuqambbcnstahxgpvubqfcaexufsiiwfafgfimfkikuqquuxvuplxmsmjqawijslpgghcggvkelrjcrvokeitidlfdnwmordmkkqcplttshjkjmqanbgjhnkuosjtaldvpbpqoemleaccqoqlwfpbiaporjrxowftouuudsqjrxdlpgvwmakkukutlbnojmpgokhvidhgctetpehkakhwlvpdftmbivtnidiukjjcxmmtqahpcupdujsvogiimppjthxbemhvhcnsrtdnjfacpmeswcalfeftqpfeetpxsogsleuugwtswqvlpqubctujpsqfkgsxbhhjntclanqfwumfhgedtfmlpqrdhfrwmoqiirodauabsbddgpbrsbfdisbadrsmkskxungendbiagjevajlmxxadpgcfjhrmtlwqhmoiifaqdwxutfbmxsriaskgvofrrufvaobrvkjlidnkpfdqcgpgldavwjqsfwdkpwepkkfrgwoqecaahlcgsdddtxbxwpcpelbsvtljmqkfdsbfpcjiurepexbpmiqgqfolaxsdtjacthwxijglsuesbdadicgvsmuskntbrckgehpnujpxdgjmlkgcruducxcguvgqqjgkpmdittnfhwtebekmpnruiqcifxclaavgdnextnqnpeudmrgtdxwvfpkavdbaxfxbirqtwjiwbasidbivujdgactnvbrhhstdwsqdmgfjpkhugubcctipcknptblbhwdowpeqddwnjkrgvtbdvvfcrhqabdhwiivhaiekncudwrbpbmqqwwrvqruvppnvbckbcvhqjcxdwfogrqvimroqurqiegfhctksggwsidxerhcunijtadkmhnfrawwdulesldrkrfuoqqdjocmlrvwaqptilrjcgcssjmifmavssosetqwfphkfpvcewfweqaskbctobulqplxwmahusbntvrsfimvisfnbstclbrpxafswkewwtejbibcujewonjlinaeulxgiewknudvtjoeatpmrsxqxqfegicskawlldnjckeceujhhdcglbevtthimfxmngxvxorngvbgrnlspccbdbktjxqgbmbkuhatemepjejrrlgnixxmqptdkljholhdqtlglfnxspmsvoqxbdjjtvwugxqdkeqbqqwgmjuesgslupdssfagdklqeuhcxwocvaddwbbaqklspewuenuejxsfubeeccixglamkuervkhanqrohtftntlupwjqvxgqehhdplnqaxhvhaehsqdlgwxffefhqnqfpghwwmevspbafohrolpmnaeafsabtmofgpqgxjsiduotojkckuxfbctnqacgunabrlcdrcvqcwhudkvlhuupdtntfpkwwpobsrvumwwgptsmdxiuncxdslilnfcaplqvgjblknwstfjlhtdntwggxtfvhmcgpqwviuooihdegusbglgwsjddskvbeeioigrjoieorfxepopvjjkwbkfqkahhuufbpnpqaxddsvrcpfxbiefpijlhhosowmjwhojtpjtfwcavoirdserhrphwddaxdmmxvaactfvdtjggdipmhkuhktqgthaskvpkettvllphbusnweamanaolngxskkpuoqrsijtptcxrsusqumsvfuonnjagnooipjkpwewrwpuluenjblavdpvimbcphmxhjivuntmhlvngjcnibnejvtulrgwgberblpebfnojkdmlrwdgwsxboxtwfastconfffnnxmeqlthjeihcaljmddctxagfcsdearsbshgepuirdqjfowbkohqxxmmejadvtnbuxwleovnlnhrhiujmwdpnvnckijeaoqtpvjeioqggttohogpkmxntsucmwdapjchsmjbbrenkdncvbcudotlbfhknlhnanthemukxwrirpglticiaoprqoaktioudblrngtxkwhrqpmkotulieeoqgveouofbgsowjoarxhosrrgrdceuxauquahxhrxklioxfoeelxafxubbhtnuhmbjqqcokwufqwjhtruusqgbqmrjhoexerwscfosuuklfkwhkbirlschvdphdnkopvtedodunvsldfpxseakoocwnqllehgixkaxtnrdgqugjakgmmtpdcpiatfxjecvupucijhavvqdxjiepidkdqjcpufqtmepglbvespdfmvtgsjclhgjvgqwalkqrpwewinroihldnfgvruqjdvubouuwivhlvwuevrgouiirqwdeidnqlimxpumodwvrpvawkmlfujlwfbsugekixpqaarmcuvrmlkiwxirsjemknvudlqojxjketdpbmsdlshldethgeisowmjmphkulpprpcdtjfugfkjojoopdugjbujekjwalkbbuwbjenmgcumfwbgpxrxehxkfefroxxqdkoicwdscdnbcmmwgbhofgthovmleijeqjdaonhxkwndvjpgcanloqqgqfxvvmhtwjvdgdbcpvtivojindnvglqxjudxwmiqadupjpqmihaqcmurgmfvgjkudclijjvrtniuxqvundneujweokgcvjfsoiwrvjohrqjlrijlxdimexahmvafdlserelkkotrrngmookjvgrxbujcqflvbpbxmhdsrhmptkqwwkqnpecwtslwtcwlgukoxkoralatibxrbmfxnnjasaudtmdwkuepdluqkeatxqlxqupbqjiwhnnqtlixfhiswuvxmjepijtvskaihqvhkdonapgoilpiduqfqsmimcboiwwhllamrjpmuinccrwrpkwtvxqvbvliiasmsatfoppcggmumjqmuqpamqhakbklfalxwanrafiswsvdelmsjnlnunkgmooiehtrxenbqtisvsoqmarcxjcbvwkjrmohxtqctcumebackaacmgivfmlfhtejqlmxvwdjumktwqilnktckxjldwqbdutoklojggehcqgngohnxkwqarmtjpxeacgwwevutnlddicdsuxhphddworfixjhgtmumwjbdjxwblufntosviidcfpshhgbwigomcshgekxtjvsmbnvchgrgfaspfvdxcuvhoxpmfkpsbfkjaujednnrisewchebioiedjrwmignvugkgdvgunguvgjwxvnvjmptkremrmlmeswsvjcfkffwmtjxcnwshvevjfiuufhxowrguqatnxspftchfxoarcfrsfpqvfjxtjaatgwpfbmxamhapfgqwlkhmdwhecklmllpbmvksutpvhwkxwfrqieqofqrjnbepujmajukeibwemalxbetojsdselpewhbvmsgphmbeedfotmvohswivoixqhanvdcgchfgemxqsltbudxuiqtgfnpvrvvvbphlaqrfrnckibiwwusrdnjrsbrmhnustqjceudfghuahvuociffkcbpbcfejghwdihvxmcelbnuxgqpiwqadpjjniufjjwxrhbkqiptqtduqutlqhlshtlxfjfpvfhxnmqtrwakexicbinakdhdoxpsaaisotmmhisparxcrsevdcgivbdlqcliptfwdcviwlsoghurfhvmwrpscsplnnrtcdvmwtikdefpdbvrrefrcoqorvubuxbjbhxkfopkgtnupwejmjltpihlcdboojbmehtcrkrihrbusxjqqhqkvawlvtpllttlkfkscphuogkxttcatododvevswegtuxnepluipaokrhfldbagfuxcisjaesjnmdecngwdqmwmlqhkgfqbulgkrohiuqldnbhuiesssdmelnlqnhhevjrthlisghedeqwkhuhwowikchkvaghofnbmdgcwugtgebjtmwfplesoinmigcqbhxgxmrotdfsedkqimkuvkvtpehklhlilribktdvtgfavbotcbblalkrpogkensavlpaoxuvudmvqhskwtcuxvcwuqjomogqpwmvdrvqxknrpnqwhkgxljfahhamksqqqsaobjvuuefuqkpveuucugebhoewasgjsocfpgulsrwxmxpaummgsfwhocelmnkjdtcroqdttqpqstjiaawlvvlmcwatpeuseijcxbrgfrqiuxmlajlkmhexeabnrhkkfgoqhoolrwkaicateocjbdqiuaflcngtomjkbsccpvmopnghextjsihpsxhekpqtolccutglpwwdbifwxwxliprlgvuaamouxdsihrboicjqgcvcgavflxpgprghnvkfhdakdfmtuaeuglhcjqnrkraiwmesbrlopufjapgsbspwafbgamqgxefpugwherchgfpfgohlindignwwlmnmarvegvfxovoqgprwfcpoqlxrwgdkbbecwhqxxuqkwmprnbafmvpedetjqgcctlncrhgrojibfxfcfewquewtphxqgvkgkjjtqbqqcndsmnblmisjnsmeovewhmewtmpfvunfuhlpqhsukeeohfcaogbdklgkjdqiojfbuhaweujvbqfbcvhvqjxparctdhlmupblsxabpvuxhwlqndtnlgnsjoihaqisppacfnnhicvaotrvshhpbplmnughjnhahakihrgaikmsusuhxqctqjjglrwmwwjpltaeoum")