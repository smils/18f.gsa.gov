---
title: "Happy Leap Day"
date: 2016-02-29
authors:
- catherine
tags:
- ipython
excerpt: "Got some IPython for you!"
description: "Some stuff."
image: 
---




```python
from api_key import api_key
import requests
import pandas as pd
import matplotlib.pyplot as plt
import matplotlib
matplotlib.style.use('ggplot')
```


```python
qry_base = 'https://api.open.fec.gov/v1/'
qry_detail = 'communication-costs/?per_page=100&sort_nulls_large=true&page=1'
qry = '{qry_base}{qry_detail}&api_key={api_key}'.format(**locals())
```


```python
response = requests.get(qry)
```


```python
df = pd.DataFrame(response.json()['results'])
```


```python
df
```




<div>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>candidate_id</th>
      <th>candidate_name</th>
      <th>candidate_office</th>
      <th>candidate_office_district</th>
      <th>candidate_office_state</th>
      <th>candidate_party_affiliation</th>
      <th>committee_id</th>
      <th>committee_name</th>
      <th>communication_class</th>
      <th>communication_type</th>
      <th>...</th>
      <th>receipt_date</th>
      <th>report_year</th>
      <th>schedule_type_code</th>
      <th>state_full</th>
      <th>sub_id</th>
      <th>support_oppose_indicator</th>
      <th>tran_id</th>
      <th>transaction_amount</th>
      <th>transaction_date</th>
      <th>transaction_type</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>H0FL12010</td>
      <td>SHAW, EUGENE CLAY JR</td>
      <td>H</td>
      <td>12</td>
      <td>FL</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>FLORIDA</td>
      <td>3062020110012946971</td>
      <td>S</td>
      <td>429288</td>
      <td>52</td>
      <td>1980-08-13T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>1</th>
      <td>H0FL12010</td>
      <td>SHAW, EUGENE CLAY JR</td>
      <td>H</td>
      <td>12</td>
      <td>FL</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>FLORIDA</td>
      <td>3062020110012946972</td>
      <td>S</td>
      <td>429285</td>
      <td>27</td>
      <td>1980-08-12T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>2</th>
      <td>H0FL12010</td>
      <td>SHAW, EUGENE CLAY JR</td>
      <td>H</td>
      <td>12</td>
      <td>FL</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>FLORIDA</td>
      <td>3062020110012946973</td>
      <td>S</td>
      <td>429284</td>
      <td>10</td>
      <td>1980-08-14T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>3</th>
      <td>H0FL12010</td>
      <td>SHAW, EUGENE CLAY JR</td>
      <td>H</td>
      <td>12</td>
      <td>FL</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>FLORIDA</td>
      <td>3062020110012946974</td>
      <td>S</td>
      <td>429283</td>
      <td>2</td>
      <td>1980-08-12T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>4</th>
      <td>S0IA00028</td>
      <td>GRASSLEY, CHARLES E</td>
      <td>S</td>
      <td>00</td>
      <td>IA</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>IOWA</td>
      <td>3062020110012946975</td>
      <td>S</td>
      <td>429152</td>
      <td>1</td>
      <td>1980-08-13T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>5</th>
      <td>H0SD02019</td>
      <td>ROBERTS, CLINT</td>
      <td>H</td>
      <td>02</td>
      <td>SD</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>SOUTH DAKOTA</td>
      <td>3062020110012946976</td>
      <td>S</td>
      <td>429151</td>
      <td>1</td>
      <td>1980-08-12T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>6</th>
      <td>H8TX05011</td>
      <td>PAUKEN, THOMAS W</td>
      <td>H</td>
      <td>05</td>
      <td>TX</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>TEXAS</td>
      <td>3062020110012946977</td>
      <td>S</td>
      <td>429149</td>
      <td>5</td>
      <td>1980-08-13T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>7</th>
      <td>H8TX05011</td>
      <td>PAUKEN, THOMAS W</td>
      <td>H</td>
      <td>05</td>
      <td>TX</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>TEXAS</td>
      <td>3062020110012946978</td>
      <td>S</td>
      <td>429147</td>
      <td>12</td>
      <td>1980-08-12T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>8</th>
      <td>H0SC06153</td>
      <td>NAPIER, JOHN L.</td>
      <td>H</td>
      <td>06</td>
      <td>SC</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>SOUTH CAROLINA</td>
      <td>3062020110012946979</td>
      <td>S</td>
      <td>429146</td>
      <td>1</td>
      <td>1980-08-12T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>9</th>
      <td>H0SC01014</td>
      <td>HARTNETT, THOMAS FORBES SR</td>
      <td>H</td>
      <td>01</td>
      <td>SC</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>SOUTH CAROLINA</td>
      <td>3062020110012946980</td>
      <td>S</td>
      <td>429142</td>
      <td>1</td>
      <td>1980-08-12T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>10</th>
      <td>H8OH19037</td>
      <td>WILLIAMS, LYLE</td>
      <td>H</td>
      <td>19</td>
      <td>OH</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>OHIO</td>
      <td>3062020110012946981</td>
      <td>S</td>
      <td>429140</td>
      <td>5</td>
      <td>1980-08-14T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>11</th>
      <td>H8OH19037</td>
      <td>WILLIAMS, LYLE</td>
      <td>H</td>
      <td>19</td>
      <td>OH</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>OHIO</td>
      <td>3062020110012946982</td>
      <td>S</td>
      <td>429138</td>
      <td>23</td>
      <td>1980-08-14T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>12</th>
      <td>H8KY06040</td>
      <td>HOPKINS, LARRY JONES</td>
      <td>H</td>
      <td>06</td>
      <td>KY</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>KENTUCKY</td>
      <td>3062020110012946983</td>
      <td>S</td>
      <td>429136</td>
      <td>14</td>
      <td>1980-08-13T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>13</th>
      <td>H0KY05015</td>
      <td>ROGERS, HAROLD</td>
      <td>H</td>
      <td>05</td>
      <td>KY</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>KENTUCKY</td>
      <td>3062020110012946984</td>
      <td>S</td>
      <td>429135</td>
      <td>14</td>
      <td>1980-08-13T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>14</th>
      <td>H6IL20027</td>
      <td>FINDLEY, PAUL</td>
      <td>H</td>
      <td>20</td>
      <td>IL</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>ILLINOIS</td>
      <td>3062020110012946985</td>
      <td>S</td>
      <td>429131</td>
      <td>22</td>
      <td>1980-08-12T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>15</th>
      <td>H0OH06049</td>
      <td>MCEWEN, BOB</td>
      <td>H</td>
      <td>06</td>
      <td>OH</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>OHIO</td>
      <td>3062020110012946986</td>
      <td>S</td>
      <td>429130</td>
      <td>9</td>
      <td>1980-08-11T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>16</th>
      <td>H8KS02017</td>
      <td>JEFFRIES, JIM</td>
      <td>H</td>
      <td>02</td>
      <td>KS</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>KANSAS</td>
      <td>3062020110012946987</td>
      <td>S</td>
      <td>429126</td>
      <td>2</td>
      <td>1980-08-15T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>17</th>
      <td>H0KS01016</td>
      <td>ROBERTS, C PATRICK</td>
      <td>H</td>
      <td>01</td>
      <td>KS</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>KANSAS</td>
      <td>3062020110012946988</td>
      <td>S</td>
      <td>429124</td>
      <td>2</td>
      <td>1980-08-15T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>18</th>
      <td>H0IA05019</td>
      <td>HULTMAN, CALVIN OSCAR</td>
      <td>H</td>
      <td>05</td>
      <td>IA</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>IOWA</td>
      <td>3062020110012946989</td>
      <td>S</td>
      <td>429120</td>
      <td>21</td>
      <td>1980-08-12T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>19</th>
      <td>H0TX08020</td>
      <td>FIELDS, JACK M JR</td>
      <td>H</td>
      <td>08</td>
      <td>TX</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>TEXAS</td>
      <td>3062020110012946990</td>
      <td>S</td>
      <td>429119</td>
      <td>77</td>
      <td>1980-08-11T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>20</th>
      <td>H0MO10018</td>
      <td>EMERSON, WILLIAM (BILL)</td>
      <td>H</td>
      <td>10</td>
      <td>MO</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>MISSOURI</td>
      <td>3062020110012946991</td>
      <td>S</td>
      <td>429117</td>
      <td>77</td>
      <td>1980-08-11T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>21</th>
      <td>H0KY05015</td>
      <td>ROGERS, HAROLD</td>
      <td>H</td>
      <td>05</td>
      <td>KY</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>KENTUCKY</td>
      <td>3062020110012946992</td>
      <td>S</td>
      <td>429114</td>
      <td>13</td>
      <td>1980-08-12T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>22</th>
      <td>H6IL20027</td>
      <td>FINDLEY, PAUL</td>
      <td>H</td>
      <td>20</td>
      <td>IL</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-09-19 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>ILLINOIS</td>
      <td>3062020110012946993</td>
      <td>S</td>
      <td>429109</td>
      <td>1</td>
      <td>1980-08-14T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>23</th>
      <td>H8CO03044</td>
      <td>MCCORMICK, HAROLD L</td>
      <td>H</td>
      <td>03</td>
      <td>CO</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-08-20 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>COLORADO</td>
      <td>3062020110012948615</td>
      <td>S</td>
      <td>672329</td>
      <td>1</td>
      <td>1980-07-21T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>24</th>
      <td>S0CO00047</td>
      <td>BUCHANAN, MARY ESTILL</td>
      <td>S</td>
      <td>00</td>
      <td>CO</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-08-20 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>COLORADO</td>
      <td>3062020110012948616</td>
      <td>S</td>
      <td>672328</td>
      <td>1</td>
      <td>1980-07-21T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>25</th>
      <td>S0ND00010</td>
      <td>ANDREWS, MARK</td>
      <td>S</td>
      <td>00</td>
      <td>ND</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-08-20 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>NORTH DAKOTA</td>
      <td>3062020110012948617</td>
      <td>S</td>
      <td>672326</td>
      <td>2</td>
      <td>1980-07-30T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>26</th>
      <td>S0CO00047</td>
      <td>BUCHANAN, MARY ESTILL</td>
      <td>S</td>
      <td>00</td>
      <td>CO</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-08-20 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>COLORADO</td>
      <td>3062020110012948618</td>
      <td>S</td>
      <td>672325</td>
      <td>2</td>
      <td>1980-07-29T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>27</th>
      <td>H0WI06061</td>
      <td>PETRI, THOMAS</td>
      <td>H</td>
      <td>06</td>
      <td>WI</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-08-20 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>WISCONSIN</td>
      <td>3062020110012948619</td>
      <td>S</td>
      <td>672324</td>
      <td>1</td>
      <td>1980-07-29T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>28</th>
      <td>H8WI02014</td>
      <td>WRIGHT, JAMES A</td>
      <td>H</td>
      <td>02</td>
      <td>WI</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-08-20 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>WISCONSIN</td>
      <td>3062020110012948620</td>
      <td>S</td>
      <td>672323</td>
      <td>1</td>
      <td>1980-07-29T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>29</th>
      <td>H0IA05019</td>
      <td>HULTMAN, CALVIN OSCAR</td>
      <td>H</td>
      <td>05</td>
      <td>IA</td>
      <td>REP</td>
      <td>C70000872</td>
      <td>CHAMBER OF COMMERCE OF THE U.S.</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-08-20 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>IOWA</td>
      <td>3062020110012948621</td>
      <td>S</td>
      <td>672322</td>
      <td>1</td>
      <td>1980-07-29T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>70</th>
      <td>P00000968</td>
      <td>KENNEDY, EDWARD M.</td>
      <td>P</td>
      <td>00</td>
      <td>US</td>
      <td>DEM</td>
      <td>C70000344</td>
      <td>INTERNATIONAL UNION OF BRICKLAYERS AND ALLIED ...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-07-18 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>UNITED STATES</td>
      <td>3062020110012949811</td>
      <td>S</td>
      <td>429424</td>
      <td>5659</td>
      <td>1980-05-23T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>71</th>
      <td>H0CO02019</td>
      <td>MCELDERRY, JOHN R</td>
      <td>H</td>
      <td>02</td>
      <td>CO</td>
      <td>REP</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-12-04 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>COLORADO</td>
      <td>3062020110012948276</td>
      <td>S</td>
      <td>514474</td>
      <td>816</td>
      <td>1980-10-20T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>72</th>
      <td>H6CO02024</td>
      <td>WIRTH, TIMOTHY E</td>
      <td>H</td>
      <td>02</td>
      <td>CO</td>
      <td>DEM</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-12-04 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>COLORADO</td>
      <td>3062020110012948277</td>
      <td>S</td>
      <td>514472</td>
      <td>816</td>
      <td>1980-10-20T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>73</th>
      <td>S0CO00047</td>
      <td>BUCHANAN, MARY ESTILL</td>
      <td>S</td>
      <td>00</td>
      <td>CO</td>
      <td>REP</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-12-04 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>COLORADO</td>
      <td>3062020110012948279</td>
      <td>S</td>
      <td>514467</td>
      <td>1318</td>
      <td>1980-10-20T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>74</th>
      <td>P60000668</td>
      <td>REAGAN, RONALD</td>
      <td>P</td>
      <td>00</td>
      <td>US</td>
      <td>REP</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-12-04 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>UNITED STATES</td>
      <td>3062020110012948280</td>
      <td>S</td>
      <td>514463</td>
      <td>816</td>
      <td>1980-10-20T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>75</th>
      <td>H8IL24041</td>
      <td>ANDERSON, JOHN T</td>
      <td>H</td>
      <td>24</td>
      <td>IL</td>
      <td>REP</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-12-04 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>ILLINOIS</td>
      <td>3062020110012948281</td>
      <td>S</td>
      <td>514462</td>
      <td>255</td>
      <td>1980-10-18T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>76</th>
      <td>H6IL23021</td>
      <td>PRICE, MELVIN</td>
      <td>H</td>
      <td>23</td>
      <td>IL</td>
      <td>DEM</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-12-04 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>ILLINOIS</td>
      <td>3062020110012948283</td>
      <td>S</td>
      <td>514458</td>
      <td>255</td>
      <td>1980-10-18T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>77</th>
      <td>H8IL22052</td>
      <td>CRANE, DAN</td>
      <td>H</td>
      <td>22</td>
      <td>IL</td>
      <td>REP</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-12-04 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>ILLINOIS</td>
      <td>3062020110012948284</td>
      <td>S</td>
      <td>514456</td>
      <td>255</td>
      <td>1980-10-18T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>78</th>
      <td>H0IL20012</td>
      <td>ROBINSON, DAVID L</td>
      <td>H</td>
      <td>20</td>
      <td>IL</td>
      <td>DEM</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-12-04 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>ILLINOIS</td>
      <td>3062020110012948286</td>
      <td>S</td>
      <td>514443</td>
      <td>255</td>
      <td>1980-10-18T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>79</th>
      <td>H6IL19037</td>
      <td>RAILSBACK, TOM</td>
      <td>H</td>
      <td>19</td>
      <td>IL</td>
      <td>REP</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-12-04 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>ILLINOIS</td>
      <td>3062020110012948287</td>
      <td>S</td>
      <td>514442</td>
      <td>255</td>
      <td>1980-10-18T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>80</th>
      <td>H6IL18021</td>
      <td>MICHEL, ROBERT H</td>
      <td>H</td>
      <td>18</td>
      <td>IL</td>
      <td>REP</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-12-04 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>ILLINOIS</td>
      <td>3062020110012948288</td>
      <td>S</td>
      <td>514440</td>
      <td>255</td>
      <td>1980-10-18T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>81</th>
      <td>H6IL17049</td>
      <td>O'BRIEN, GEORGE M</td>
      <td>H</td>
      <td>17</td>
      <td>IL</td>
      <td>REP</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-12-04 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>ILLINOIS</td>
      <td>3062020110012948289</td>
      <td>S</td>
      <td>514439</td>
      <td>255</td>
      <td>1980-10-18T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>82</th>
      <td>H0IL17018</td>
      <td>MURER, MICHAEL A</td>
      <td>H</td>
      <td>17</td>
      <td>IL</td>
      <td>DEM</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-12-04 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>ILLINOIS</td>
      <td>3062020110012948290</td>
      <td>S</td>
      <td>514438</td>
      <td>255</td>
      <td>1980-10-18T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>83</th>
      <td>H0IL16010</td>
      <td>AURAND, DOUGLAS R</td>
      <td>H</td>
      <td>16</td>
      <td>IL</td>
      <td>DEM</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-12-04 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>ILLINOIS</td>
      <td>3062020110012948291</td>
      <td>S</td>
      <td>514436</td>
      <td>255</td>
      <td>1980-10-18T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>84</th>
      <td>H6IL15019</td>
      <td>CORCORAN, THOMAS J.</td>
      <td>H</td>
      <td>15</td>
      <td>IL</td>
      <td>REP</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-12-04 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>ILLINOIS</td>
      <td>3062020110012948292</td>
      <td>S</td>
      <td>514434</td>
      <td>255</td>
      <td>1980-10-18T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>85</th>
      <td>H0IL11011</td>
      <td>ZANILLO, MICHAEL R</td>
      <td>H</td>
      <td>11</td>
      <td>IL</td>
      <td>REP</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-12-04 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>ILLINOIS</td>
      <td>3062020110012948297</td>
      <td>S</td>
      <td>514425</td>
      <td>255</td>
      <td>1980-10-18T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>86</th>
      <td>H0IL09015</td>
      <td>ANDRICA, JOHN DEAN</td>
      <td>H</td>
      <td>09</td>
      <td>IL</td>
      <td>REP</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-12-04 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>ILLINOIS</td>
      <td>3062020110012948299</td>
      <td>S</td>
      <td>514421</td>
      <td>255</td>
      <td>1980-10-18T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>87</th>
      <td>H0CA43025</td>
      <td>METZGER, THOMAS</td>
      <td>H</td>
      <td>43</td>
      <td>CA</td>
      <td>DEM</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-10-23 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>CALIFORNIA</td>
      <td>3062020110012949877</td>
      <td>S</td>
      <td>473278</td>
      <td>346</td>
      <td>1980-10-11T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>88</th>
      <td>H0CA42027</td>
      <td>HUNTER, DUNCAN L.</td>
      <td>H</td>
      <td>42</td>
      <td>CA</td>
      <td>REP</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-10-23 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>CALIFORNIA</td>
      <td>3062020110012949878</td>
      <td>S</td>
      <td>473276</td>
      <td>346</td>
      <td>1980-10-11T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>89</th>
      <td>H0CA41078</td>
      <td>LOWERY, BILL</td>
      <td>H</td>
      <td>41</td>
      <td>CA</td>
      <td>REP</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-10-23 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>CALIFORNIA</td>
      <td>3062020110012949879</td>
      <td>S</td>
      <td>473271</td>
      <td>346</td>
      <td>1980-10-11T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>90</th>
      <td>H0CA41029</td>
      <td>WILSON, BOB</td>
      <td>H</td>
      <td>41</td>
      <td>CA</td>
      <td>DEM</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-10-23 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>CALIFORNIA</td>
      <td>3062020110012949880</td>
      <td>S</td>
      <td>473269</td>
      <td>638</td>
      <td>1980-10-11T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>91</th>
      <td>H8CA39026</td>
      <td>DANNEMEYER, WILLIAM EDWIN</td>
      <td>H</td>
      <td>39</td>
      <td>CA</td>
      <td>REP</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-10-23 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>CALIFORNIA</td>
      <td>3062020110012949881</td>
      <td>S</td>
      <td>473265</td>
      <td>346</td>
      <td>1980-10-11T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>92</th>
      <td>H6CA38030</td>
      <td>PATTERSON, JERRY M.</td>
      <td>H</td>
      <td>38</td>
      <td>CA</td>
      <td>DEM</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-10-23 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>CALIFORNIA</td>
      <td>3062020110012949882</td>
      <td>S</td>
      <td>473256</td>
      <td>346</td>
      <td>1980-10-11T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>93</th>
      <td>H8CA35032</td>
      <td>DREIER, DAVID T</td>
      <td>H</td>
      <td>35</td>
      <td>CA</td>
      <td>REP</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-10-23 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>CALIFORNIA</td>
      <td>3062020110012949883</td>
      <td>S</td>
      <td>473244</td>
      <td>346</td>
      <td>1980-10-11T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>94</th>
      <td>H6CA35036</td>
      <td>LLOYD, JIM</td>
      <td>H</td>
      <td>35</td>
      <td>CA</td>
      <td>DEM</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-10-23 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>CALIFORNIA</td>
      <td>3062020110012949884</td>
      <td>S</td>
      <td>473241</td>
      <td>346</td>
      <td>1980-10-11T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>95</th>
      <td>H8CA33177</td>
      <td>GRISHAM, WAYNE RICHARD</td>
      <td>H</td>
      <td>33</td>
      <td>CA</td>
      <td>REP</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-10-23 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>CALIFORNIA</td>
      <td>3062020110012949885</td>
      <td>S</td>
      <td>473239</td>
      <td>346</td>
      <td>1980-10-11T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>96</th>
      <td>H0CA33018</td>
      <td>ANDERSON, FRED L.</td>
      <td>H</td>
      <td>33</td>
      <td>CA</td>
      <td>DEM</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-10-23 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>CALIFORNIA</td>
      <td>3062020110012949886</td>
      <td>S</td>
      <td>473238</td>
      <td>346</td>
      <td>1980-10-11T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>97</th>
      <td>H6CA32025</td>
      <td>ANDERSON, GLENN M.</td>
      <td>H</td>
      <td>32</td>
      <td>CA</td>
      <td>DEM</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-10-23 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>CALIFORNIA</td>
      <td>3062020110012949887</td>
      <td>S</td>
      <td>473235</td>
      <td>346</td>
      <td>1980-10-11T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>98</th>
      <td>H8CA31072</td>
      <td>GRIMSHAW, DONALD HARVEY</td>
      <td>H</td>
      <td>31</td>
      <td>CA</td>
      <td>REP</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-10-23 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>CALIFORNIA</td>
      <td>3062020110012949888</td>
      <td>S</td>
      <td>473234</td>
      <td>346</td>
      <td>1980-10-11T00:00:00</td>
      <td>24F</td>
    </tr>
    <tr>
      <th>99</th>
      <td>H0CA29016</td>
      <td>HIRT, MICHAEL ARTHUR</td>
      <td>H</td>
      <td>29</td>
      <td>CA</td>
      <td>REP</td>
      <td>C70000716</td>
      <td>NATIONAL RIFLE ASSOCIATION (INSTITUTE FOR LEGI...</td>
      <td>None</td>
      <td>None</td>
      <td>...</td>
      <td>1980-10-23 00:00:00</td>
      <td>1980</td>
      <td>F76</td>
      <td>CALIFORNIA</td>
      <td>3062020110012949890</td>
      <td>S</td>
      <td>473218</td>
      <td>346</td>
      <td>1980-10-11T00:00:00</td>
      <td>24F</td>
    </tr>
  </tbody>
</table>
<p>100 rows × 27 columns</p>
</div>




```python
%matplotlib inline
```


```python
plt.figure()
```




    <matplotlib.figure.Figure at 0x10c3a5ba8>




    <matplotlib.figure.Figure at 0x10c3a5ba8>



```python
df.transaction_amount.plot(kind='hist')
```




    <matplotlib.axes._subplots.AxesSubplot at 0x10c476f28>




![plot]({{site.baseurl}}/assets/blog/jupyter/2016-02-29-happy-leap-day/2016-02-29-happy-leap-day_12_1.png)
