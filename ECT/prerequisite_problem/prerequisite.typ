#let kg="kg"
#let K="K"
#let kJ="kJ"
= Examples of exercises you should be able to solve

== Ideal gas law

a)


Helium has the ideal gas law equation of state

$ p V = N k_b T $
Where N is the number of Helium atoms, and $k_b$ is boltzmann's constant. 

We can rewrite this in terms of the number of moles of the gas n:

$ p V = n N_A k_b T $

Where n is the number of moles, and $N_A$ is avogadro's constant.

We can also write this in terms of the mass of gas m by substituting $n = m / M$ , where M is the molar mass (mass of one mole of Helium)

$ p V = (m/M) N_A k_b T $
$ p V = m ((N_A k_b) / M) T $
$ p = m R_s T / V $

where $R_s$ is the _specific gas constant_, in our case $2.07 kJ kg^(-1) K^(-1)$

The expansion work p-V is:

$ d W = #sym.integral _(V_1)^(V_2) p d V $
$ d W = #sym.integral _(V_1)^(V_2) (m R_s T ) / V d V $

$ #sym.Delta W = m R_s T ln(V_2/V_1) $

#figure(    image("diagram.png", width: 80%),
      caption: [Diagram to show initial and final pressure, volume]) 

The specific expansion work is 

$ (#sym.Delta W) / m = R_s T ln(V_2/V_1) $

For constant temperature, $V_2/V_1 = p_1/p_2$

$ (#sym.Delta W) / m = R_s T ln(p_1/p_2) $

Where $R_s = 2.07 "kJ" "kg"^(-1) "K"^(-1)$, and $ T=373K, p_1/p_2 = 30$

#figure(    image("pv_diagram2.png", width: 80%),
      caption: [Blue area is the work done by the gas]) 

We can do this calculation in the Python REPL:

```py
>>> import math
>>> (2.07) * 373 * math.log(30)
2626.0985103551666
```

hence:
$ #sym.Delta W = 2626 "kJ" "kg"^(-1) $

For an _isothermal_ process of an ideal gas: 

$#sym.Delta T = 0 #sym.arrow  #sym.Delta U = 0$

By the first law of thermodynamics, $#sym.Delta U = Q - W$

Q is the energy added to the system as heat
W is the work done by the system on its surroundings

The heat supplied to the gas equals the work done by it, since the internal energy isn't changing. 

Hence, $2627 kJ kg ^(-1)$ has to be supplied

= Mass and Energy Balance
