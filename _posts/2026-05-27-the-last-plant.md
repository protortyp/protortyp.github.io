---
title: The Last Plant
date: 2026-05-27 11:06:49 +0200
categories: [politics,markets]
tags: []
hn: 48299742
---

{% include glossary.html %}

A wind farm in Germany gets paid the price of natural gas. The wind is
free. The gas is not. Germans now pay about thirty-nine and a half cents
per kilowatt-hour, the highest household electricity bill in the
European Union bar one.[^1] A third more than the French. More than
double what Americans pay.

{% include charts/eu-comparison.html %}

Germans were told the Energiewende would deliver clean, secure,
affordable electricity. They got the most expensive household power in
the EU, an industrial base shrinking faster than any other on the
continent, and a country that imports the same carbon-free electricity
it switched off in April 2023.

The standard postmortem gives you two villains. Russia, for the gas
crisis of 2022. The Energiewende's authors, for switching nuclear off
too fast. Both are real. Neither names what actually happened. For
twenty-five years Germany ran one experiment, under three governments
and six coalitions, in whether political will can replace the price
signals of an electricity market. The bill is the result.

Almost every fix currently on the German political table assumes the
problem is one of money. Subsidise the grid fee. Cap industrial
electricity at six cents. Cut the <span class="g" tabindex="0" data-tip="Federal electricity tax, about two cents per kWh.">Stromsteuer</span>. Pay-out, pay-around,
pay-down. None of these move gas out of the slot where the auction
reaches for the last plant it needs. They split the bill between the
household, the industrial buyer and the taxpayer, and hope the next
government can find another envelope.

The German electricity bill is not a market failure. It is a policy
outcome with an auction attached.

---

## Electricity has no shelf

One fact explains everything that follows. **You cannot store
electricity at any meaningful scale.**

Every other thing you buy sits on a shelf until you want it. Electricity
does not. The instant you switch on a kettle, somewhere in the country a
generator must produce a little more, *right then*, to balance it.
Supply must equal demand every second of every day or the grid's
frequency drifts and machines start to break. Germany's entire grid
storage, every pumped reservoir and every battery together, could run
the country for a matter of minutes. Against the roughly five hundred
billion kilowatt-hours it consumes each year, that is a rounding error.

So electricity has to be matched, continuously, in real time. The way
you do that for a whole country is an auction. It is run by an exchange
called <span class="g" tabindex="0" data-tip="European Power Exchange
Spot. Runs the day-ahead and intraday electricity auctions for most of
continental Europe from Paris and Leipzig.">EPEX SPOT</span>, and it
clears at noon every day for all twenty-four hours of the following day.
It clears in fifteen-minute slices, so ninety-six prices per day instead
of twenty-four.

This is the wholesale price. It is the raw, volatile cost of the
electricity itself before any cable or any tax. Everything on your bill
is built on top of it. And it is set, every day, by a rule I had not
heard of until recently.

## The staircase

Every plant in the country makes an offer for tomorrow. Each one says,
in effect: *"At 7pm tomorrow I can deliver this many megawatt-hours, and
the least I will accept is this many euros."*

That floor is not the cost of building the plant. That money is long
spent. It is the cost of producing **one more unit, right now**, from a
plant that already exists: the fuel, the carbon permit, a little wear on
the machine. Economists call it the marginal cost, and it differs
enormously by technology.

A solar panel's fuel is sunlight. Its marginal cost is essentially zero.
A wind turbine's fuel is wind. Also essentially zero. A nuclear plant is
low, because uranium is cheap and the machine cannot easily be
throttled. Lignite, the brown coal Germany still digs out of the ground,
sits in the middle. Hard coal is higher. A combined-cycle gas turbine is
higher still, and it lurches up and down with the price of gas. A gas
peaker or an oil unit is highest of all.

Line up every plant's offer cheapest first and you get a rising
staircase. Free renewables at the bottom. Nuclear next, then lignite,
then hard coal, then gas in a thick band somewhere near the top, with
oil and peakers above. Then ask the only question that matters: *how
much power does Germany need tomorrow at 7pm?* Draw that as a vertical
line across the staircase. The auction switches plants on from the
bottom up until it has enough to meet that line.

{% include charts/merit-order.html %}

The plant where the line lands is the marginal plant. It is the last
one needed, the most expensive one running, and it sets the price for
every plant to the left of it. It is the only line in German energy
policy that was not drafted in a coalition. It is also the only one
that does what it is supposed to.

## The wind farm gets paid the price of gas

Every plant that runs in that hour is paid the same price. The price of
the marginal plant. The most expensive one switched on.

This was genuinely counterintuitive to me. If gas is the last plant
standing at 7pm and it sets the clearing price at ninety-five euros per
megawatt-hour, the wind farm that offered its power at zero is also
paid ninety-five. So is the nuclear plant. So is the lignite block.
Everybody to the left of the demand line gets the same number on the
cheque.

It is not a windfall. The gap between what the wind farm needs to
operate (nothing) and what the auction pays it (the gas price) is
exactly how it pays back the cost of being built. The system pays
everyone the same clearing price on purpose, because the alternative,
paying each plant whatever it bid, teaches every plant to stop bidding
its true cost and start guessing the clearing price instead. You end up
paying more, not less.

This design has a name. **Pay as clear.** Or, more formally, uniform
marginal pricing. It is the dominant design in the United States, across
most of Europe, and in much of the world. Most of the time it is
efficient and quietly fair. The cheap plants get the producer surplus
that finances the next plant. The expensive plants only run when they
need to.

The rule has one other consequence. It hands the price of every
megawatt-hour the country consumed that hour to **whichever plant
happened to be last in line.** It does not matter that wind and solar
made up half the supply. It does not matter that their fuel was free.
If the last plant needed to keep the lights on was burning gas, then
gas sets the price. For everyone.

---

## Why gas

In 2024 gas-fired plants generated 13.2 percent of Germany's
electricity. A little under a seventh. And yet during most trading hours
of the year, gas was the marginal plant. Gas set the price.[^2]

Those two numbers do not match because being the price-setter is not
about volume. It is about who is last in the merit order during the hour
that matters.

Wind and solar flood the bottom of the staircase, but only when the
weather agrees. The wind has to blow and the sun has to shine. At 7pm
in January, with the sun down and the wind dropped, the staircase below
gas is mostly empty, and the auction climbs up to gas to find the last
megawatts.

Take total demand and subtract the wind and solar generated in that
hour. What is left is the gap the controllable plants must fill. The
Germans call it the <span
class="g" tabindex="0" data-tip="Residual load. The portion of
electricity demand that must be covered by dispatchable plants after
subtracting variable renewables (wind and solar). The shape of this
curve, not the headline renewables share, is what determines how often
gas sets the price.">Residuallast</span>, the residual load. It is the
most important number you have never heard of, because it is what the
gas plants are sized for.

On the worst windless evening of January 2024 the residual load peaked
at around sixty-six gigawatts against a total demand of about
seventy-six. The country needed sixty-six gigawatts of controllable
plant ready to deliver. In July 2024 the residual load went *negative*
at noon on sunny days, because solar was generating more than the
country was consuming and the controllable plants were being asked to
disappear. The same month's evening peak still cleared fifty gigawatts.

{% include charts/residual-load.html %}

Renewables changed the floor. They did not change the ceiling. Germany
still needs sixty-something gigawatts of on-call power for the worst
hour of the year, and the on-call power is mostly gas. The new
fifteen-minute auction even *sharpens* this: the solar-noon crash is
now ninety-six prices instead of twenty-four, and so is the evening
climb.

This is the structural reason gas sets the price most hours. It is not
a temporary problem. It is what happens when you build a lot of
weather-dependent capacity without building, at the same speed, the
storage, the demand response, and the firm low-carbon plant that would
let you stop reaching for gas in the dark hours.

## The night the bill went vertical

If gas sets the price, the price of gas eventually becomes the price of
electricity. For most of the 2010s nobody had to think about this,
because gas was cheap. The European benchmark contract, the <span
class="g" tabindex="0" data-tip="Title Transfer Facility. The dominant
European natural gas trading hub, based in the Netherlands. Its monthly
contract is the de facto benchmark for European gas prices.">TTF</span>,
sat below €20 per megawatt-hour for most of the decade and was trading
around €27 in August 2021.

Then Russia turned the taps.

On the 24th of February 2022 Russian troops crossed into Ukraine.
Germany suspended the certification of Nord Stream 2 the same week. In
the months that followed Russian pipeline gas was throttled, then
disrupted, then in September the Nord Stream pipelines were physically
sabotaged. By the 26th of August 2022 TTF peaked at €319 per
megawatt-hour.[^3] More than ten times where it had been a year earlier.

The German wholesale power price tracked it almost perfectly, because
gas sets the price. The annual average day-ahead price went from €97
per megawatt-hour in 2021 to €235 in 2022. The August 2022 monthly
average alone was €465. On the evening of the 29th of August, in the
hour from 7 to 8pm, the German price hit €871 per megawatt-hour.[^4]

{% include charts/gas-power-coupling.html %}

Under pay as clear, *every* megawatt-hour produced in that hour,
including the zero-fuel wind and the zero-fuel solar that made up
nearly half of supply, re-priced upward to the gas number. The country
was generating a lot of cheap power. It was paying for all of it as if
the cheap power were expensive.

This is not a failure of pay as clear. Pay as clear was doing exactly
what it was designed to do. It is a failure of the bet that gas would
stay cheap. The Energiewende, the German energy transition, had been
built on the implicit assumption that Russian gas would be the bridge
fuel smoothing the renewables ramp and replacing nuclear. The assumption
broke in a single year. The auction did the rest.

## Paying to give it away

The same rule that pays a wind farm €95 when gas sets the price pays
it negative numbers when gas does not. **Negative electricity prices**
mean the generator pays the buyer to take the power away. It happens
when subsidised renewables keep producing regardless of price and
dispatchable plants cannot be turned off fast enough. The hours per
year when this happens have been compounding: 69 in 2022, 301 in 2023,
457 in 2024, 573 in 2025.[^5]

{% include charts/negative-hours.html %}

Germany succeeded at building enormous amounts of weather-dependent
generation. It did not build the storage, demand response, or
interconnection to use that generation when it shows up. The energy is
there. The flexibility is not. In midsummer noon hours the country
gives the energy away. In midwinter evenings it pays the gas price to
get some back.

---

## The four floors

The wholesale price right now is about 8 cents per kilowatt-hour. The
household bill is 40. Pay-as-clear explains the 8. Two more layers
explain the other 32.

For an average household using 3,500 kilowatt-hours a year, the 2025
retail bill breaks down into roughly 16 cents of energy (wholesale
plus supplier margin), 11 cents of grid fees, and 13 cents of state
taxes, levies and VAT.[^6] Of the four floors, only the wholesale
floor is set by the market. The other three are set by people who do
not pay them.

The most politically charged line for twenty years was the <span
class="g" tabindex="0" data-tip="Renewable energy surcharge. From 2000
to 2022, the levy that financed the gap between the guaranteed
feed‑in tariffs paid to renewable generators and the market price of
renewable power. Originally 0.19 ct/kWh; peaked at 6.88 ct/kWh in
2017; reduced to zero on 1 July 2022 and formally abolished.">EEG-Umlage</span>,
the surcharge that financed the gap between the feed-in tariffs paid
to renewable generators and what they earned on the wholesale market.
It started at 0.19 cents in 2000 and peaked at 6.88 cents in 2017,
more than the entire wholesale price that year. Then in 2022 the
Scholz government zeroed it. The cost did not vanish. It moved. From
the power bill to the tax bill, where it still runs about €17 billion
a year and where almost no household notices it.[^7]

{% include charts/bill-composition.html %}

The other half of the trick is that wholesale prices have fallen much
faster than retail. Spot prices dropped about 67% between 2022 and 2024.
The retail bill fell about 13%. Suppliers hedge their volumes
years ahead, so the cheap power they buy now will only show up on
bills in 2026 and 2027. And grid fees rose at the same time, because
integrating dispersed renewables into a grid designed for centralised
plants is expensive, and the bill is where that expense lands.

---

## How Germany made gas the last plant

If pay-as-clear is the rule, the policy of the last twenty-five years is
what put gas in the slot the rule reaches for. Each of the moves below
is defensible on its own terms. Each one removed a cheap rung between
renewables and gas, or made the gas itself more expensive. The slot
the auction reaches for at 7pm in January did not become gas by
accident. It became gas by twenty-five years of choices, none of which
named gas as the target, all of which ended in the same place.

This is the [camel](/posts/camels/) at the scale of an entire energy
system. A sequence of half-decisions, each one defensible alone, ground
through the overlap of what every [coalition](/posts/political-velocity/)
in turn could stomach, ending in the position nobody designed.[^8]

**2000.** Schröder's SPD-Green government passes the EEG, guaranteeing
twenty-year feed-in tariffs to renewables, and signs the nuclear
consensus with the four utilities, agreeing to phase out the
seventeen German reactors by around 2022. Two decisions in one year,
by one coalition, that will define the next quarter century.
Renewables are 6.3% of consumption.

**September 2010.** Merkel's CDU-FDP government extends reactor
lifetimes by eight to fourteen years. The nickname is *Ausstieg aus
dem Ausstieg*, the exit from the exit.

**11 March 2011.** Fukushima. Within days, Merkel takes seven of the
oldest reactors offline. On the 30th of June the Bundestag votes
overwhelmingly to shut every German reactor by 2022. Eight close
immediately. This is the pivot point of the whole story. It is also a
panic decision with no replacement plan of equivalent scale for the
roughly 140 terawatt-hours per year of carbon-free baseload that was
about to disappear.

**July 2020.** Merkel's CDU-SPD coalition passes the
Kohleausstiegsgesetz: coal exits by 2038, with €4.35 billion in
operator compensation and €40 billion in structural aid for the coal
regions.

**31 December 2021.** Three more reactors close: Grohnde, Gundremmingen
C, Brokdorf.

**24 February 2022.** Russia invades Ukraine. Nord Stream 2
certification is suspended in Berlin within days. In September the
pipelines are sabotaged. Russian pipeline gas, which had been roughly
55% of German gas imports in 2021, effectively ends.

**15 April 2023.** Isar 2, Emsland and Neckarwestheim 2, the last three
German reactors, are disconnected from the grid under the Scholz
government. Sixty-two years of German nuclear power end on a Saturday
evening. Cumulatively those plants had produced about 5,200 TWh and
avoided roughly 4,200 Mt of carbon dioxide.[^9]

You can argue the politics of any one of those moves. The picture they
add up to is harder to argue with.

{% include charts/generation-mix.html %}

Total electricity generation has shrunk by about a fifth since the
2010 peak (633 TWh in 2010, 497 in 2024). The nuclear band, which
produced 170 TWh of carbon-free electricity in 2001, fell off a cliff
after 2011 and reached zero in 2023. Wind and solar grew from a slice
to most of the chart but did not refill the total. Germany generated
less power in 2024 than at any point since the early 1960s, in a
country whose population grew and whose stated policy is
electrify-everything.

{% include charts/nuclear-cliff.html %}

Germany did not gradually replace nuclear with renewables. It switched
nuclear off, leaned harder on coal and gas in the intervening years to
cover the gap, and built renewables on a parallel track. The two
timelines never met. By the time renewables were a serious share of
generation, the nuclear plants were already gone.

## The flip

The signal that the trouble had already arrived was 2023. For two
decades Germany had been a net electricity exporter, typically by 20
to 50 TWh a year. In 2023 it slipped into being a net importer for the
first time since the early 2000s. In 2024 it deepened. The net imports
were 9 TWh in 2023 and 25 TWh in 2024.[^10]

{% include charts/net-imports.html %}

The mix of the imports is the part that matters. In 2024 about a third
came from France, another large chunk from Denmark, then Switzerland
and Norway. About a quarter of total imports came from French nuclear
plants. About half from renewables on neighbouring grids. The country
that switched off its carbon-free baseload in April 2023 spent 2024
buying the same kind of electricity from countries that had not.

{% include charts/imports-mix.html %}

## The factory floor

The hardest number on the German energy bill is not the household one.
It is the industrial one. Germany has an unusual economy by EU
standards: a large share of its manufacturing is what the statisticians
call energy-intensive, the basic chemicals and metals and glass and
paper that sit upstream of almost everything else. When the price of
electricity and gas changes, those industries are the first to feel it,
and they are not easily moved.

Take the production index for the five energy-intensive branches that
Destatis tracks together. Index them to 2021, so the year before the
crisis is the 100-mark. By 2023 the index was at 83.7. By 2025 it had
drifted further to 82.1. A drop of about 18% in four years, with no
recovery visible in the data. Across the whole of German industry the
drop over the same period was about half that.[^11]

{% include charts/industrial-output.html %}

The single best-documented example is BASF, the largest chemical company
in the world and a Verbundsite in Ludwigshafen that has been running
since 1865. On the 24th of February 2023 the company announced 2,600
layoffs and the closure of one of two Ludwigshafen ammonia plants, plus
several other lines. The reason given, in the company's own words, was
an additional energy bill of €3.2 billion in 2022, of which roughly 84%
fell in Europe and most of that in Ludwigshafen.[^12] In September 2024
the company announced a second, deeper round of Ludwigshafen cuts,
targeting one in seven facilities and another €1 billion per year of
savings by the end of 2026.

The chemical industry as a whole lost about 23% of its production
volume in two years, between 2021 and 2023.[^13] The Bank of Italy
traced the contraction outward through European supply chains and
estimated that shocks originating in German manufacturing explained
nearly a third of the six-month variance in Italian manufacturing
output. The IMF estimated the high-energy-price shock knocked roughly
1.25% off German potential output.

You can argue that fears of broad deindustrialization are
overblown, that the damage is concentrated in a handful of sub-sectors,
and that some of the drop is permanent efficiency rather than
involuntary shutdown. All of those qualifications are real. The numbers
are still the numbers. The country that the rest of Europe relies on
for its basic chemistry has, on the measure that matters, produced
about a fifth less of it for four years running. This is what
political incompetence costs when it tries to outrun a price signal.

---

## The strongest defences

The strongest defences of the policy are the ones I have the hardest
time dismissing, so let me give each its best version before saying why
I don't buy it.

**Emissions fell, and that is the point.** True, and it matters.
Power-sector carbon emissions went from about 330 Mt in 2000 to 183 Mt
in 2024. The single-year drop from 2023 to 2024 was 9%. Total
German greenhouse gas emissions in 2024 were 48% below 1990. Renewables
share of electricity consumption went from 6.3% in 2000 to 54% in 2024,
a sliver to a majority. New renewables clear EEG auctions at 5–7 cents
per kilowatt-hour for utility-scale solar and 6–8 cents for onshore
wind, which is below the LCOE of new gas or new nuclear in Germany. The
case for building more of them is purely economic. You would do it even
if you did not care about emissions.

{% include charts/co2-vs-price.html %}

{% include charts/renewables-share.html %}

This is the defence that lets German politicians sound serious while
avoiding the thing they did. Yes, emissions fell. They also shut down
a safe, working, carbon-free technology because a tsunami hit a
different reactor design on a different continent, and then pretended
the missing power would be supplied by adjectives. Merkel did not
discover a new fact about German nuclear physics in March 2011. She
discovered a new political fear, and chose to ride it.

That is not a trade-off. A trade-off is when you name the cost before
you pay it. Germany was sold clean, secure, affordable electricity.
What it got was cleaner electricity, less security, higher prices, and
a political class still speaking as if the first word cancels the
other three. The honest defence would be: we made electricity
expensive, weakened industry, and increased dependence on neighbours
because we thought shutting nuclear was worth it. Almost nobody says
this, because stated plainly it sounds insane.

**Cap industrial electricity to save the factories.** This is the
policy Germany already chose. The Industriestrompreis came into force
on 7 May 2026, applies retroactively from 1 January, runs through
2028, and gives energy-intensive industry electricity at five cents
per kilowatt-hour on half its annual consumption. Cost to the federal
budget: €3.1 billion over three years, covering roughly ninety
sub-sectors from chemicals and steel to glass, cement and
semiconductors.[^15] It is politically attractive because it is fast,
it is visible, and it does not require anyone to name what twenty-five
years of policy actually cost. It is also, on its own terms, an
admission. An Industriestrompreis is the state announcing that the
structural problem is permanent, and that the only remaining lever is
socialising the bill across a different group of payers. The factories
survive on the subsidy. The grid still reaches for gas at 7pm in
January. The next subsidy is already coming.

**Imports lower system cost.** When French nuclear is cheaper than
firing a German lignite block plus its carbon permit, importing French
nuclear is the rational thing to do. The European single market is
built for that. The phrase Agora uses, *"lower system cost"*, is
technically correct on the day. But there is a difference between
buying neighbours' electricity because it is cheaper on a given
Tuesday, and buying it because you have structurally less firm capacity
than you used to have. The first is trade. The second is dependency. By
2024 the second was quietly also true. A country that switched off its
own carbon-free baseload in April 2023 and spent the rest of the year
importing carbon-free electricity from neighbours that did not is not
paying for trade. It is <u>paying rent on a decision</u>.

## The closed door

The cleanest German nuclear policy in 2026 is the one Germany made
impossible in 2011 and then finished killing in 2023: keep the last
six reactors running. Together they were about eight gigawatts of
firm, carbon-free power. Not enough to solve the whole residual-load
problem, but enough to move the staircase down in exactly the hours
when gas now gets to name the price.

This is what makes the decision so hard to forgive. Nuclear was not a
speculative technology Germany had to invent. It was steel and
concrete already connected to the grid, staffed by people who knew how
to run it, producing the one kind of electricity the Energiewende most
needed and least had: clean power that did not care about the weather.

By 2026 the restart case is no longer clean. Some industry groups say
several reactors could return in three to five years for one to three
billion euros each. The operators and regulators are much colder.
Dismantling permits have been issued. Fuel is gone or going.
Components are being cut. Isar 2's operator says plainly that the
plant is no longer reactivable. Germany did not merely close the
plants. It set machinery in motion to make regret expensive.[^14]

That is the real indictment. The error was not failing to restart
nuclear in 2026. The error was creating a country in which restarting
safe carbon-free plants has to be discussed like archaeology.

Germany did not fail to build renewables. It built more than almost
anyone. It failed to build the things renewables need to be useful: the
wires that carry them, the storage that time-shifts them, the firm
low-carbon plant that covers the windless winter evening. Until those
catch up, gas keeps being the last plant in the staircase, and the
auction keeps paying everyone the gas price.

Cheap clean electricity is [permitted by physics](/posts/permitted-by-physics/).
It is also permitted by markets. What Germany has spent twenty-five
years proving is that it is not permitted by coalitions.

---

[^1]: Eurostat, *Electricity prices for household consumers*, series `nrg_pc_204`, second half 2024 and 2025. Germany was the highest in the EU at €39.43 per 100 kWh in H2 2024 and €38.69 in H2 2025, when Ireland slightly overtook at €40.42. EU‑27 average around €28.7 in both halves.

[^2]: Volume share from AG Energiebilanzen (AGEB), *Bruttostromerzeugung in Deutschland*, 2024 annual: gas-fired plants produced 56.9 TWh of 497.3 TWh gross generation. Price-setting frequency is qualitative, summarised by Montel and EPEX SPOT as "gas is the marginal technology in most trading hours in Europe."

[^3]: TTF month-ahead settlement, Argus Media and ICE Endex, 26 August 2022.

[^4]: Bundesnetzagentur SMARD platform, day-ahead price series 2021–2024, hourly resolution.

[^5]: Negative-price hour counts from Bundesnetzagentur (SMARD) and Montel.

[^6]: BDEW *Strompreisanalyse* 2025, household reference case of 3,500 kWh/year, all components including VAT.

[^7]: Netztransparenz.de (the four German TSOs), EEG-Umlage history; Bundesregierung press release of 5 July 2024 on the shift from the Klima- und Transformationsfonds to the general federal budget.

[^8]: Compressed from the standard German energy-policy chronologies maintained by Clean Energy Wire and Agora Energiewende.

[^9]: World Nuclear Association country profile, Germany, 2024 update.

[^10]: SMARD net cross-border flows, annual 2023 and 2024.

[^11]: Destatis, *Produktionsindex Produzierendes Gewerbe*, energy-intensive branches, table 42153; index reconstructed from year-on-year rates 2018–2025.

[^12]: BASF Annual Report 2022, capital markets release of 24 February 2023; September 2024 cost programme communicated under CEO Markus Kamieth.

[^13]: VCI (Verband der Chemischen Industrie) annual industry reports 2022 and 2023, cross-referenced with Destatis chemical industry production index.

[^14]: Operator and ministry positions on reactivation: BMUKN FAQ on the Atomausstieg; n-tv/dpa reporting on PreussenElektra's April 2026 statement that Isar 2 is no longer reactivable; restart estimates of three to five years and €1–3 billion per plant from Kerntechnik Deutschland via World Nuclear News. The six post-2021 shutdowns (Brokdorf, Grohnde, Gundremmingen C, Isar 2, Emsland, Neckarwestheim 2) together comprised about 8.1 GW net per the World Nuclear Association reactor database.

[^15]: Industriestrompreis funding directive published in the Bundesanzeiger on 7 May 2026 following European Commission state aid clearance in April 2026. Retroactive coverage from 1 January 2026 through 31 December 2028; 5 ct/kWh on 50% of annual consumption for sectors on the KUEBLL carbon-leakage list (approximately 90 sub-sectors). Budget €3.1 billion, split €1.5 / €0.8 / €0.8 billion across payouts in 2027, 2028, 2029. Sources: BMWE press release of 16 April 2026; Gleiss Lutz, *Germany cuts costs for electricity-intensive companies from 1 January 2026*; Clean Energy Wire.
