article <- 'Chinese President Xi Jinping will visit Hong Kong for the first time as leader to mark the 20th anniversary of the citys handover to China on July 1, 2017.
Story highlights

Chinese President Xi Jinping to visit Hong Kong for the first time as Chinese leader
His visit is expected to be met with massive protests

Hong Kong (CNN)Chinese President Xi Jinping will visit Hong Kong for the 20th anniversary of the citys handover to Chinese sovereignty, according to Chinese state news agency Xinhua.
Xi will visit Hong Kong between June 29 and July 1. It will be his first visit to the territory as Chinese leader, and is expected to be marked by massive protests.

During his time in the city, Xi will inspect Peoples Liberation Army troops at their garrison, visit a Chinese-Hong Kong construction project, and swear in Carrie Lam as the next Hong Kong Chief Executive.
He will also attend a major gala celebration to mark 20 years since China assumed control over the city.
Any visit by Xi Jinping to Hong Kong is expected to be marked by mass protests.
Any visit by Xi Jinping to Hong Kong is expected to be marked by mass protests.
Heightened security
Xis visit is expected to be accompanied by a massive security operation, with parts of the city put into lockdown to ensure protesters cannot get to the Chinese leader.
Hong Kong police have been drilling with their counterparts from Guangdong, across the border in China, for months.
According to the Ming Pao newspaper, front line officers have been told to block sensitive images and words from appearing in Xis line of sight during events, such as signs referencing the Tiananmen Square massacre or expressing a desire for genuine universal suffrage.
During a visit by Zhang Dejiang, Chinas third most senior government official, to Hong Kong last year, police glued down sidewalks and erected huge barriers to prevent the public getting anywhere near Zhang.
A spokeswoman for Demosisto, the party founded by pro-democracy protesters Joshua Wong and Nathan Law, said they expected the police presence would be even heavier for Xis visit.
She said the group was alarmed by reports about preventing certain protest materials. Freedom of speech and political expression is enshrined in Basic Law, she added, referring to Hong Kongs mini-constitution.
Thousands of Hong Kongers take to the streets every year on July 1 to call for democracy.
Thousands of Hong Kongers take to the streets every year on July 1 to call for democracy.
Protests and marches
Thousands of Hong Kongers are expected to take to the streets during Xis visit, particularly on July 1, the date of handover celebrations and a traditional day of protest in the city.
However, an annual pro-democracy rally was denied use of its usual staging ground in Victoria Park, in the heart of the city. The space has instead been promised to a pro-Beijing organization, the Hong Kong Celebrations Association, that will hold a handover commemoration event in the park, local media reported.
While the march will still go ahead, organizers said this was an attempt to crush dissent ahead of Xis visit.
The global fight for Hong Kong democracy

The global fight for Hong Kong democracy 01:48
The Chinese regime is trying to squeeze out the space that we have in Hong Kong and is a threat to our freedom and democracy, said Lee Cheuk-yan, a longtime pro-democracy activist.
Earlier this year, Joshua Wong told CNN Xis visit would be a critical moment to organize civil disobedience and to voice our demand for democracy and human rights.
In a statement, Law said Friday that Demosisto would use the anniversary of handover to expose the facade of the celebrations for a peaceful China and the happy return of Hong Kong to the motherland. '

wordcount <- function(article){
  seg <- strsplit(article , ' ') #切割每個字詞
  tb <- table(seg)
  head(tb[order(tb, decreasing = TRUE)], 10)
}

wordcount(article)

