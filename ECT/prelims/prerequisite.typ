#let kg="kg"
#let K="K"
#let kJ="kJ"
= Examples of exercises you should be able to solve


== Ideal Gas Law

=== a) Isothermic expansion of an ideal gas - work done and heat gained

Consider a piston chamber which is undergoing an expansion at constant temperature. The fluid
within the chamber is helium, which behaves as ideal gas, and has molar mass of 4 kg/kmol and R =
2.07 kJ/kgK. The temperature is 100 °C, the initial pressure 30 bar, and the final pressure 1 bar.
Calculate:

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

#figure(    image("diagram2.png", width: 80%),
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

=== b) entropy change of isothermically expanding gas

From thermodynamics:

$ d U = T d S - p d V $

For an isothermic, ideal gas $ d U = 0 $

$ T d S = p d V $

$ d S = p / T d V $

where $ p = m R T / V $

so 

$ d S = m R / V d V $

$ #sym.Delta S = m R ln(V_2 / V_1) $

$ #sym.Delta S = m R ln(p_1 / p_2) $

$ (#sym.Delta S) / m = #sym.Delta s = R ln(p_1 / p_2) = 7.04 kJ kg^(-1) K^(-1) $

The cylinder has a piston. You can lock the piston in place with a pin. You can
add or remove masses from the piston. You can place the entire cylinder in a hot or cool liquid.

a) Can you decrease the volume without
changing the pressure?

Yes:

$ p V = m R T $

You can reduce the V by reducing T. This can be done by placing the cylinder in a cold liquid. 

b) Can you decrease the volume without changing the temperature?

$ V = m R T / p $

The only way to do this would be to increase the pressure by adding some masses on to the piston

c) Can you decrease the pressure without changing the temperature? 

$ p = m R T / V $

Yeah, we can increase the volume by removing masses and thus decrease the pressure

d) Can you decrease the pressure without changing the volume? If so, how? 

$ p = m R T / V $

Keep it locked with a pin to keep V the same. Dunk in cold liquid. 

=== b) Mass and energy balances

The energy entering the chamber is due to the internal energy of the bit of mass $#sym.delta m_w $ and due to the pV wor it does  $p v d m_w$

So the energy entering due to a bit of mass is $(u+pv) #sym.delta m = h #sym.delta h $

Energy balance:

$ dot(m_w) h_w + dot(m_s) h_s = dot(m_"mixture") h_m + dot(Q)$ 

Mass Balance

$ dot(m_"mixture") = dot(m_s) + dot(m_w) $


Pluggin the mass balance equation into the energy balance equation gives:

$ $


```py
>>> ((293.07-42) * 150 + 190) / (2769 - 293.07)
15.28738696166693
```
