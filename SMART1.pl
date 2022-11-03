is_a(earth,planet).
is_a(mars,planet).
is_a(moon, satellite).
is_a(sun,star).

is_a(over_population,crisis).
is_a(societal_collapse,crisis).
is_a(war,crisis).
is_a(ecosystem_collapse,crisis).
is_a(climate_change,crisis).
is_a(et_event,crisis).

orbits(moon,earth).
orbits(earth,sun).
orbits(mars,sun).

are(humans,species).
are(animals,species).
are(species,threatened).
are(species,deceased).
are(species,living).

comprises_of(universe,solar_system).
comprises_of(solar_system,sun).
comprises_of(earth,air).
comprises_of(earth,ocean).
comprises_of(earth,land).

by(threatened,crisis).

can_be(war,nuclear).
can_be(war,biological).
can_be(war,conventional).
can_be(war,cyber).
