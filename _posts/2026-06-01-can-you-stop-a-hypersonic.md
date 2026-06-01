---
title: Can You Stop a Hypersonic Missile?
date: 2026-06-01 08:12:29 +0200
categories: [defense, tech]
tags: []
math: true
hn: 48358515
---

{% include charts/hypersonic/lib.html %}

The headlines say yes. Patriot crews shot down a Kinzhal over Kyiv on
the night of May 4, 2023. Arrow-3 batteries killed Iranian ballistic
missiles over Tel Aviv in April and October 2024. A pair of THAAD
batteries in Israel emptied something close to a quarter of the US
national inventory across twelve days of war in June 2025. The headline
word in every one of those engagements was hypersonic. The headline is
wrong.

No maneuvering boost-glide hypersonic vehicle has ever been fired in
combat against a defended target. Every "hypersonic intercept" the press
has reported in the last three years was a different class of weapon: an
air-launched aeroballistic missile, a quasi-ballistic short-range
ballistic missile with a maneuvering reentry vehicle, or in one case a
MIRV bus on an intermediate-range ballistic missile that the press could
not stop calling hypersonic. The Avangard, the only Russian vehicle that
meets the strict definition, has sat in silos in Orenburg since 2019
without being touched. The Chinese DF-17 has never been used. The
American Dark Eagle has not yet been ordered to fire.

So when we ask "can you stop a hypersonic," we are partly asking "what
would happen if anyone fired one." The honest answer to that question,
in June 2026, is that we do not know, because the kill chain we would
use against one has not been tested against a true target in a real
engagement, and the dedicated interceptor designed to do the job will
not exist for at least three more years.

The rest of this essay is about why that is harder than the press
understands. And about a second problem hiding underneath it: even
before the glide vehicle shows up, the defender is already running out of
interceptors, against the weapons it knows how to stop.

## What "hypersonic" actually means

"Hypersonic" is a marketing word that does a lot of work in the press
and very little in engineering. The official definition is faster than
five times the speed of sound. By that definition every ICBM warhead is
hypersonic on re-entry. A V-2 rocket from 1944 was hypersonic. A meteor
is hypersonic. The Space Shuttle was hypersonic.

The Mach 5 threshold is not arbitrary, though. It is the line where the
textbook aerodynamics most engineers learn stops working. Above it the
air gets so hot that nitrogen and oxygen molecules start to break apart,
the heat-capacity ratio γ stops being constant, and what was a fluid
problem becomes an aerothermochemistry problem. Below it you are doing
high-school physics. Above it you are running a small particle
accelerator with a missile attached.

{% include charts/hypersonic/mach-gallery.html %}

The reason any of this matters for missile defense is that a small
number of modern weapons do three things at once that no previous weapon
did:

1. They sustain hypersonic speed for thousands of kilometres, not
   just for the brief terminal arc.
2. They maneuver in flight, which earlier fast weapons could not.
3. They do both at low enough altitude (20 to 60 km) to hide under
   the horizon of legacy ground-based defenses.

As of 2026, only three weapon classes in the open-source literature meet
all three criteria: Russia's Avangard, China's DF-17 / DF-ZF, and the
United States' Dark Eagle. Most of what the press calls hypersonic fails
at least one of these tests.

The Kinzhal is an air-launched Iskander on a MiG-31. Russia claimed Mach 10.
A Ukrainian Patriot operator measured Mach 3.6 and shot it
down.[^econ] The Oreshnik is an intermediate-range ballistic missile
with a six-warhead MIRV bus. It comes down very steep and very fast on a
lofted ballistic trajectory. It does not glide. The Zircon is a scramjet
that climbs to about 28 km, cruises at Mach 8 to 9, and dives. It does
not glide either. Iran's Fattah-1 is a maneuvering-RV MRBM. None of them
is what this post means by "hypersonic."

{% include charts/hypersonic/arsenal.html %}

## First you have to see it

Ground radar is line-of-sight. The Earth is round. Anything below the
horizon is invisible.

How far is the horizon? Imagine a radar on the ground, looking up. The
line of sight grazes the surface tangentially and then leaves into
space. Anything above the line is visible. Anything below is hidden
behind the curve. Over-the-horizon radar is the exception, not the rule,
and I set it aside here.

The distance from radar to the horizon, when the target is at altitude
$h$, is given by simple geometry:

$$
d \;\approx\; \sqrt{2 \, R_e \, h}
$$

The square root is the part that matters. Doubling altitude only
multiplies horizon distance by about 1.4.

- A ballistic warhead at 1,000 km altitude is visible from 3,570 km away. At Mach 20 closing speed, about ten minutes of warning.
- A glide vehicle at 30 km altitude is visible from 618 km away. At Mach 8 closing speed, about 260 seconds.

This is the central reason the 20 to 60 km band is the strategic sweet
spot. Lower and the vehicle melts. Higher and it becomes visible from a
thousand kilometres out.

There are two ways out. Push the radar back, or push the sensor up.

Pushing the sensor up is what the Hypersonic and Ballistic Tracking
Space Sensor was built for. Two competing prototypes launched on a
Falcon 9 from Cape Canaveral on February 14, 2024. L3Harris's prototype
works. Northrop Grumman's does not. The Missile Defense Agency confirmed
both in April 2025. The Space Development Agency's Tranche 1 Tracking
Layer, which is supposed to put another 28 fire-control-quality
satellites in low Earth orbit, has slipped past its early 2026
deployment target because the optical inter-satellite links between
satellites are not yet talking to each other reliably.[^sda]

Even on the ground, the glider is hard to track once you see it. The
plasma sheath around the vehicle in flight scatters and absorbs radar
pulses. The standard Swerling models that ground radars use to track
ballistic re-entry vehicles do not work against a target whose radar
cross-section depends on plasma state.[^pinto]

The good news, from the defender's perspective, is that the same plasma
that breaks radar makes the glider visible in the infrared from low
Earth orbit. SBIRS and the new HBTSS prototypes see the glide vehicle as
a bright dot in the 2 to 3 micron band for most of its glide. The future
of hypersonic defense is in low Earth orbit. The future just is not here
yet.

## Then you have to track it

Once a sensor sees the target, a defender's job runs the same loop
for every weapon: detect, track, discriminate, commit, fly out,
intercept. Each link takes time:

| Stage | Typical budget |
|-------|---------------|
| Track convergence (need several radar returns) | ~30 s |
| Discrimination (is it a warhead, decoy, or chaff?) | ~30 s |
| Fire-control commit (compute solution, slew launcher) | ~15 s |
| Interceptor fly-out (Mach 4–5 missile) | ~75 s |

That is about 150 seconds of fixed budget before the interceptor is
anywhere near the target. The defender needs the target's flight time
from radar acquisition to impact to be longer than 150 seconds, by
enough margin to actually maneuver onto a hit.

For a ballistic warhead at 1,000 km, this is easy. Ten minutes of
warning. Plenty of time to run the chain twice if you miss once. For a
glide vehicle at 30 km, this is brutal. 260 seconds of warning. After
the 150-second kill chain the defender has about a hundred seconds left
to maneuver onto a target that is itself maneuvering.

{% include charts/hypersonic/horizon.html %}

When the bar in the chart above goes to zero, the defender cannot
intercept from this radar with this kill chain. The way out is to change
the inputs: push detection further back with space-based sensors,
forward-deploy the launchers, or build a faster interceptor with a
shorter fly-out. Every modern hypersonic-defense roadmap is some
combination of these three.

The single completed counter-HGV engagement in US history was on March
24, 2025. The destroyer USS *Pinckney*, sitting off the Pacific Missile
Range Facility in Hawaii, ran the kill chain end to end against an
air-launched MRBM with a Hypersonic Target Vehicle-1 front end. HBTSS
provided fire-control-quality tracks. Aegis baseline 5.1.5 took the cue.
The SM-6 Block IAU got an engagement solution. The test was named
Stellar Banshee.[^banshee]

No SM-6 was actually fired. The engagement was simulated. The press
covered it as a successful counter-hypersonic test. That was half true.
The kill chain ran. The interceptor did not.

A live test, designated FTM-43, is on the schedule. As of May 2026 it
has not occurred.

## Then you have to hit it

Suppose the kill chain ran fast enough to get an interceptor in the air
with seconds to spare. What happens next?

The interceptor does not fly straight at the target. It uses a guidance
law called **proportional navigation**, invented in the 1950s and still
the standard. The idea is simple: turn at a rate proportional to the
rate at which the line-of-sight to the target is rotating. If the target
is non-maneuvering, this converges on perfect lead pursuit. The
interceptor cuts the corner and arrives where the target will be. The
engineering, against airliners and cruise missiles and ballistic
re-entry vehicles, is by now a solved problem.

But if the target maneuvers, two things go wrong simultaneously.

The first is the **acceleration-advantage rule**. As a rule of thumb, to
reliably intercept a target pulling $g_t$ of lateral acceleration, the
interceptor needs to pull roughly $3 g_t$ of its own. The exact multiple
depends on the geometry and how late the target jinks, but the direction
is fixed. A glide vehicle in a casual 3-g turn wants a 9-g defender. A
6-g turn wants 18-g. A 10-g turn wants 30-g, near the structural ceiling
of many interceptors. Past that the airframe breaks before the geometry
closes.

The second is what fighter pilots call the **stern chase**. If the
target's velocity component pointing away from the interceptor exceeds
the interceptor's own speed, the interceptor cannot catch up. Once that
condition holds, the gap only grows. A Patriot at Mach 4.5 chasing a
Zircon at Mach 8 from behind has the same problem as you trying to chase
a car at 200 mph on a bicycle. No amount of cleverness fixes it.

{% include charts/hypersonic/intercept.html %}

The single-shot probability of kill in the simulator above uses a
Gaussian model around the miss distance, calibrated so a miss inside
about 30 metres gives a high kill probability. Real air defense fires
layered shots from multiple interceptors, and the cumulative kill
probability rises with each one. But each interceptor costs millions of
dollars against a target that may cost less. The wallet was supposed to
be the constraint. It turns out, as we will see, that the wallet is the
constraint after all.

## What's actually flying

The defensive catalog as of June 2026 is shorter than the press
suggests, and most of it is not built for glide vehicles at all.

**Glide Phase Interceptor.** The only US weapon dedicated to the
glide-phase kill, Northrop Grumman sole prime since September 2024.
Initial operational capability is scheduled for the end of 2029, with
twelve missiles, and a live test against a "representative HGV target" is
required before then. As of June 2026 it has not happened. GPI is still
a paper missile.

**HBTSS.** L3Harris prototype, on orbit since February 2024, works.
Northrop Grumman prototype, also on orbit, does not. Performance was
confirmed at Stellar Banshee in March 2025. The system is supposed to
transition into SDA's Tranche 1, 2, and 3 Tracking Layer.

**SDA Tracking Layer.** Tranche 1 was supposed to put 28
fire-control-quality tracking satellites in low Earth orbit by early 2026.
As of late May 2026, none of the Tranche 1 tracking satellites had
launched. SDA declared a strategic pause in March 2026 to fix optical
inter-satellite link problems flagged in a February 2025 GAO report.

**SM-6 Block IB and IAU.** Block IB was placed in a strategic pause in
the FY26 Navy budget, funding nearly halved. Block IAU is the
guidance-section upgrade actually doing the counter-hypersonic work
today. It has intercepted Houthi anti-ship ballistic missiles, killed an
MRBM in FTM-32 in February 2024, and ran the simulated engagement at
Stellar Banshee. A live FTM-43 intercept of an HTV-1 surrogate has not
yet been conducted.

**Patriot PAC-3 MSE.** First and only system with verified Kinzhal
intercepts. Ukrainian Air Force counted 25 Kinzhals destroyed out of 63
launched by early January 2024. Lockheed Martin delivered 620 PAC-3 MSEs
in 2025 and announced on January 6, 2026 a seven-year deal to scale to
roughly 2,000 per year by end of 2030. Unit cost roughly $4 million.

**Arrow-3 and David's Sling.** Arrow-3 (Israel Aerospace Industries)
recorded its first operational intercept in late 2023 and was the
primary Israeli upper-tier shooter through the April 2024, October 2024,
and June 2025 engagements with Iran. David's Sling Stunner is the
mid-tier companion, first used against a ballistic missile in June 2025.

**THAAD.** The June 2025 Israel-Iran war saw "more than 150" THAAD
interceptors expended, "nearly a quarter of all THAAD interceptors
funded by the United States to date," according to *Wall Street Journal*
reporting on July 24, 2025, confirmed by CNN four days later.[^wsj]
Lockheed Martin signed a framework agreement with the Department of War
on January 29, 2026 to quadruple production from 96 to 400 interceptors
per year over seven years. The catch is that there are no new THAAD
deliveries to US inventory between July 2023 and April 2027.

**Iron Beam ("Or Eitan").** Delivered to the Israel Defense Forces on
December 28, 2025. The world's first operational high-power laser
air-defense system, at roughly 100 kW. Rated range about 10 km. It is
for drones, rockets, and mortars. It is not for hypersonic glide
vehicles.

**JLWS.** The new Joint Laser Weapon System, announced in the FY27
budget, fields a containerized 150 kW system scalable to 300+ kW. Total
Army-Navy R&D commitment through FY31 is about $676 million. JLWS is
publicly scoped against cruise missiles. No public US, Israeli, or
allied model claims a directed-energy kill against a maneuvering HGV at
meaningful range as of June 2026, and the back-of-envelope physics is
settled. A 100 to 300 kW beam has perhaps one to three seconds of dwell
on a hardened, ablating, plasma-shrouded glide body. That is orders of
magnitude short of the joules per square centimetre needed for a thermal
kill.

## What combat actually says

Four engagements in the last twenty-six months have done more to clarify
hypersonic defense than any flight test.

**April 13–14, 2024 (Operation True Promise / Iron Shield).** Iran
launched 170 Shahed drones, 30 cruise missiles, and 120 ballistic
missiles at Israel. A coalition of Israeli, US, British, French, and
Jordanian forces destroyed about 99% of them. Nine Iranian missiles
struck two Israeli airbases. Drones and cruise missiles never crossed
into Israeli airspace. None of what was fired was a glide-phase HGV. The
defense cost roughly a billion dollars against an attack that cost 80 to
100 million.

**October 1, 2024 (Operation True Promise II).** Iran launched 180 to
200 ballistic missiles in two waves, including a contested number of
Fattah-1 maneuvering-RV MRBMs. About 32 impact points were recorded
around Nevatim Airbase, with additional strikes at Tel Nof and Gedera.
The IRGC claimed a 90% hit rate. The IDF claimed isolated impacts. One
credible reading, from Jeffrey Lewis at the Middlebury Institute, was
that Israel chose not to defend Nevatim in order to preserve its Arrow
magazines. No HGV involved.

**June 2025 (the twelve-day war).** Iran fired 574 ballistic missiles
and 1,084 drones over twelve days. Israel and the United States
intercepted 273 missiles. 49 missiles impacted populated or military
targets. Israel degraded Iran's pre-war stockpile from roughly 2,500 to
between 1,000 and 1,500. The US expended "more than 150" THAAD
interceptors and roughly 80 SM-3s. Total US and Israeli interceptor
cost: 1.48 to 1.58 billion dollars in twelve days, per JINSA.[^jinsa]
Iranian missile firings cost between 1.1 and 6.6 billion. The
intercept-bypass rate rose materially in the back half of the war as
Israeli and US magazines drew down. No HGV involved.

**Ukraine, 2022 to May 2026.** Cumulative Kinzhal intercept count hit 25
of 63 by early January 2024. Ballistic intercept rate averaged 25 to 35%
through 2024 and into the summer of 2025. In late summer 2025 Russia
modified the terminal trajectories of Iskander-M and Kinzhal: steeper
dives, decoy submunitions. Ukraine's ballistic intercept rate collapsed
from 37% in August 2025 to 6% in September,[^ft] recovering partially to
roughly 30% by November. The May 23–24, 2026 Kyiv strike combined 1
Oreshnik (third combat use, struck Bila Tserkva), 2 Kinzhal, 3 Zircon,
30 Iskander-M / S-400 ballistic, 54 Kalibr / Kh-101 / Iskander-K cruise,
and 600 drones.[^kyiv] Ukrainian air defense intercepted about 87%
overall. Strip out the drones and the rate against missiles drops to
about 60%. Strip out the subsonic cruise missiles and you are at 17%
against the genuinely fast threats. Zero against the Oreshnik. None of
the night was an HGV.

{% include charts/hypersonic/kyiv.html %}

The entire combat record of "hypersonic interception" to date is the
interception of weapons fast enough to call hypersonic and not
interesting enough to count.

## The magazine problem

The defender's magazine empties against the weapons we already know how
to stop. That is the second problem, and against the glide vehicle it
only gets worse.

The June 2025 twelve-day war consumed roughly a quarter of all THAAD
interceptors the United States had ever funded. THAAD production runs at
96 per year. The new Lockheed Martin agreement to quadruple production
to 400 per year takes effect over seven years. The agreement does not
change the fact that there are no new THAAD deliveries to US inventory
between July 2023 and April 2027.

The SM-3 picture is similar. CSIS Missile Defense Project fellow Wes
Rumbaugh noted in December 2025 that the 92 SM-3 interceptors expended
in October 2024 and June 2025 combined "represents about 20 percent of
all SM-3 interceptors expected to be delivered to the United States by
the end of December 2025."[^csis] Implied cumulative US SM-3 inventory
across all blocks: roughly 460. Restock to pre-war levels, per CSIS's
April 2026 *Last Rounds* analysis, will take one to four years.

The economics of a single intercept can be excellent or terrible
depending on what you fire against. A PAC-3 MSE costing four million
dollars stopping a Shahed-136 costing thirty thousand is a 114-to-1 loss
for the defender. The same PAC-3 stopping a Kinzhal costing four and a
half million is roughly even, and excellent if you credit the runway
repair that does not happen. JINSA computed the June 2025 war as a
defender's cost-ratio victory of between two hundred thousand and
fourteen hundred thousand percent, once one counted the infrastructure
and casualties that were spared.

The honest reading of those numbers is not that defense is winning on
economics. It is that defense is winning on economics until the magazine
runs out. The magazine has been running out faster than production
replaces it. This is true now, against weapons that are not even glide
vehicles. The arithmetic does not improve when the glide vehicles
arrive.

The framing the analyst community has converged on is the one Tom Karako
at CSIS calls "magazine breadth, not depth." A single tier of expensive
kinetic interceptors cannot scale against the asymmetric threat. The fix
is a stack: cheap directed energy at the bottom (Iron Beam, eventually
JLWS) for drones and cruise missiles, mid-tier interceptors (PAC-3 MSE,
David's Sling) for ballistic missiles, top-tier exoatmospheric (Arrow-3,
SM-3 Block IIA) for ICBM-class threats, and a dedicated glide-phase
weapon (GPI, SM-6 Block IAU) for HGVs. The stack does not exist yet. The
glide-phase layer is paper. The directed-energy layer is rated for
drones, not gliders.

## So can you stop a hypersonic?

The honest 2026 answer is in three parts.

The first part is for the weapons the press calls hypersonic. Most of
them, yes. Patriot has shot down dozens of Kinzhals. SM-6 has shot down
Houthi ASBMs. Arrow-3 carried the upper-tier load against Iran twice.
David's Sling proved itself in June. The kill rates are good, sometimes
excellent, against weapons that are not actually glide vehicles. The
press will keep calling these successes hypersonic intercepts, because
the word sells, and most readers will not notice the distinction.

The second part is for an actual maneuvering boost-glide vehicle in the
glide phase. The honest answer is that we do not know, because no one
has tried. The dedicated weapon does not exist yet. The sensor that
would cue it is mostly on the drawing board. The simulated test in March
2025 said the kill chain runs. The live test has not occurred. The
earliest plausible date for a real intercept of a representative HGV is
not GPI in 2029. It is the SM-6 Block IAU's FTM-43, which is on the
calendar but not yet on the range. If FTM-43 succeeds, the answer shifts
from "we do not know" to "sometimes, under known geometry, at
unsustainable cost." If FTM-43 fails or slips, the answer stays where it
is.

The third part is the political one. The defense that is actually
working against the Avangard and the DF-17 in 2026 is not radar. It is
the escalation ladder. Russia and China each have their vehicle, and
neither has fired one. The reasons are not technical. Avangard is also
nuclear, and firing a Mach-20 maneuvering glide vehicle in combat would
be a first of a kind that does not unhappen. The widest version of the
hypersonic gap, the one that haunts every American defense planner's
slide deck, sits in a silo at Dombarovsky with the safety on. The fact
that it stays there is not a comfort. It is a fact about who has and has
not pressed the button so far. That set is observable. It can change.

So can you stop a hypersonic? Sometimes, the wrong ones. Probably not
the right ones, yet. The one defense working against the right ones
today is a politician's restraint, not a kill chain.

The defenders did not stop being clever. The attackers got harder.

The worst one is still in its silo. And we are running out of
interceptors against the second-worst ones.

---

[^kyiv]: Ukrainian Air Force / Reuters / NPR reporting on the May 23–24, 2026 strike. Composition: 600 Shahed-type drones, 54 Kalibr / Kh-101 / Iskander-K cruise missiles, 30 Iskander-M / S-400 ballistic, 3 Zircon, 2 Kinzhal, 1 Oreshnik. Intercepts: 549 / 49 / 4 / 1 / 1 / 0.
[^pinto]: Pinto, J., "RCS modelling of hypersonic glide vehicles in plasma," *IET Radar, Sonar & Navigation* (2024).
[^econ]: "Yes, we shot down the 'unique' Kinzhal," statement of Ukrainian Air Force Commander Mykola Oleshchuk, May 6, 2023, confirmed by Pentagon spokesman Brig. Gen. Patrick Ryder, May 9, 2023. The Mach 3.6 figure comes from an interview with the Patriot operator in *The Economist*, June 13, 2023.
[^sda]: *Breaking Defense*, March 17, 2026, on Space Development Agency optical inter-satellite link delays.
[^banshee]: MDA / Aegis BMD FTX-40 "Stellar Banshee," March 24, 2025, USS *Pinckney* (DDG-91) off PMRF Hawaii. The engagement was a simulated SM-6 Block IAU shot against an air-launched MRBM with an HTV-1 front end.
[^jinsa]: JINSA, "Cost Analysis of the 12-Day Israel-Iran War," August 2025.
[^csis]: Wes Rumbaugh, "The Depleting Missile Defense Interceptor Inventory," CSIS Missile Defense Project, December 5, 2025.
[^wsj]: "U.S. Burned Through Quarter of THAAD Inventory in Israel-Iran War," *Wall Street Journal*, July 24, 2025, confirmed by CNN, July 28, 2025.
[^ft]: *Financial Times*, October 2025, citing Ukrainian Air Force data compiled by the Centre for Information Resilience.
