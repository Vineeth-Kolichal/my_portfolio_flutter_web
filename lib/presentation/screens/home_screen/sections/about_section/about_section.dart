import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_site/presentation/widgets/export_widgets.dart';
import 'package:my_portfolio_site/util/constants.dart';

import 'widgets/export_about_section_widgets.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(255, 15, 15, 15),
          ],
        ),
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        return FractionallySizedBox(
          widthFactor: constraints.maxWidth >= 1024 ? 0.8 : 1,
          child: Column(children: [
            Space.y(70),
            const SectionTitle(title: 'About'),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Responsive(
                  desktop: DeskTopViewSkill(constraints: constraints),
                  mobile: TabAndMobileViewSkill(constraints: constraints)),
            ),
            Space.y(70),
          ]),
        );
      }),
    );
  }
}

class TabAndMobileViewSkill extends StatelessWidget {
  const TabAndMobileViewSkill({
    required this.constraints,
    super.key,
  });
  final BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColumnOne(constraints: constraints),
        Space.y(20),
        ExpertiseSectionWidget(
          constraints: constraints,
        ),
        ExperianceAndEducation()
      ],
    );
  }
}

class DeskTopViewSkill extends StatelessWidget {
  const DeskTopViewSkill({
    required this.constraints,
    super.key,
  });
  final BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ColumnOne(constraints: constraints),
            Space.x(20),
            Expanded(
              child: ExpertiseSectionWidget(
                constraints: constraints,
              ),
            ),
          ],
        ),
        Space.y(20),
        Row(
          //  mainAxisSize: MainAxisSize.min,
          children: [
            ExperianceAndEducation(),
          ],
        )
      ],
    );
  }
}

class ExperianceAndEducation extends StatelessWidget {
  const ExperianceAndEducation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedBoxWidget(
        title: 'Experiances',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExperianceItem(
              logo: a,
              position: "Flutter Developer",
              companyName: "EXDERA (Formerly Earning Designs)",
              fromDate: "November 2023",
              toDate: "Present",
              location: "Bengaluru, Karnataka",
            ),
            ExperianceItem(
              logo: b,
              position: "Flutter Developer Trainee",
              companyName: "Brototype",
              fromDate: "November 2022",
              toDate: "October 2023",
              location: "Kochi, Kerala",
            ),
            ExperianceItem(
              logo: c,
              position: "Entreprenour- Self employed",
              companyName: "SignUP Digital services (CSC)",
              fromDate: "May 2019",
              toDate: "March 2021",
              location: "Munnad, Kasaragod, Kerala",
            )
          ],
        ));
  }
}

class ExperianceItem extends StatelessWidget {
  const ExperianceItem({
    super.key,
    required this.logo,
    required this.position,
    required this.companyName,
    required this.fromDate,
    required this.toDate,
    required this.location,
    this.onCompanyNameTap,
  });
  final String logo;
  final String position;
  final String companyName;
  final String fromDate;
  final String toDate;
  final String location;
  final VoidCallback? onCompanyNameTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Responsive.isDestop(context) ? 90 : 50,
            width: Responsive.isDestop(context) ? 90 : 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.yellow,
                width: 0.5,
              ),
              image: DecorationImage(image: NetworkImage(logo)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Space.x(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                position,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.yellow,
                  fontWeight: FontWeight.w800,
                ),
              ),
              InkWell(
                onTap: onCompanyNameTap,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.factory,
                      color: Colors.yellow,
                      size: 16,
                    ),
                    Space.x(4),
                    Text(
                      companyName,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.calendar_month,
                    color: Colors.yellow,
                    size: 15,
                  ),
                  Space.x(4),
                  Text(
                    '$fromDate - $toDate',
                    style: const TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.yellow,
                    size: 15,
                  ),
                  Space.x(4),
                  Text(location,
                      style: const TextStyle(fontSize: 13, color: Colors.grey)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

const a =
    'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABcVBMVEX////jHif//v////3///v8//////r//v76+/v//P/6//8xKmMkIFvjHiVwbYv///cgGlxhYIQcGV7nHCT23dzv7vIRC1SkobfXAAAlIGARBloOBVRaVXxybZEAAEb2///RHi4AAEkAAEJaVni0s78OAFUeF2ElH2f/+P/2//jnGyzfICfQABD/9vPdIiHRSE7k5PDlABfSABvtyMj96uj/8+vuFx7tvL5QTXHV1eJmYYkbGlkPAGKXlano6u3fwsPRrLbvwrvMdYa9VWK4AAC4CibmlZbZbnjZXmLPAh721M764ebdITfts7LWd3bTO0bmwLfFGhrMZmTos7TPfX7ZlIzTOEjkoqPKKjT249vXdoHSW1rdaG3SV1W+kJPwrrbCYmPZHznWbGPPL0vHKSXpAArVVWTDNzrLh4vKAADfRlTw0saAfJUTFEstJ1B6dpJJRW5YV2w6NWZKRHWQjanT1Nc6OFy5tMwdGkextLwVED6kai/iAAAVVUlEQVR4nO1di3/aRrYe5iGhMUIYGRyFxjIx5g22sI1NvM6ud3vtkNTJNo/aSd172723yd27idO6eXX/+nvOSIDAOOmDJvD76WsTY2kQ82nO4zszI0JIhAgRIkSIECFChAgRIkSIECFChAgRIkSIECFChAgRIkSIECFChAgRIkSI8CGwT92BPxiCV+JlcdlJaVAhKRWEftROTRRuWVAZv+QkpS5yNAxy2T2YflCNSP7nzcvOStdgjb/EJdU/aq8mikpZ7P/10rOG4W7+bUO6+sw6KwMH2/58YbwNwkkptv/jQHMN4n7kjk0GQkAkkdv1Q2KMOcu4lHF6cOXWR+/X5CCoYGK7692mY8aQWYYr73xT/2JTfvyeTQySadvd5i1NjGEoXMmOlttXNowZDjLS4Ptds77hijEkDNq4e8WuH2CqmFEIUpYby7a3xigbiZQQYii5fc+r2WtlWZnZZC8F2a9Xze//Dhl/QIJKQnVdSn7csm37ywUpjdlMFJRKyba7bdO+x6kRYiiZAefI1v16zG62jjhYMP+E/fztiNNKZXvZbrbrD4ShswFDTZduRWyfeO2Y7T2EhEL5bDIUOIK2XWvf0yjldMCQG26l8QgstGbWvmoIatAZNFLBGDPkRrfdtKv1Y2YYfYZwQhpi4alnmrWa3V2QVDIg+Wm7++shgCGIsa5pVmP2SWNwwpASYgx7sOzVqtVas34s5GwaKDWESza6YIZmzX5EBopFUCiWGg/rds2O1Uzv1BKzaKEIQ7qgZJrtmGkub4XyRAUG8c5aq23HYjXb/m5TGHJGq0LJIU00TTNm2w/DQcYQ2nG3XYvZ4IP2l9vS0Kc311PUJDq/AFQvUDJgmoBQEjNbj6VQLCA7QhZsHLbsJvKDRHHAsfqdWoqgmoX0IbBE6r9wsVjHNKHgHcKdUCQkVLpk45ltxhRq3tdTrmQMo2JtceMidN4w/vx5/Z/1Vh3w+YILvoZvgDLRetS12z5D015+POVh1JX8yfIl+Pbx480eYOT8MXTdzVuebZtguUixDk443VUhNbSnbXscvK+3oHSnymaFMChHSaoLBq6JWT4WQ0OtP6SST3cYFcbWCQTFIZiQxW371HIhRFKd67rOdCohw+sGsZ50ey4IKaT6rCGZnNogo8CNTcjbIwwhDdhfN+RwFocISuXCWt3st2va3dufqt+/HIxu1M0RhtVm27zVqLghhmCuQgp+NBhAjDL1oykfPwX6wDNjIwxt7/4Wqu6BgzEqXG3z0MPs34d9qk23CypQceCNDCEMzv0G5HeNDwZIGIJt3IP8Hmpmf9VwZ2DqiZFDL+SHZgyCjIcEBeN+tctcWQYhww/AQnsEQYibZnfDFVr/QpQypYSmbmVGsLUhhhBkvFtbMqRBdcN1Db75tFULNTNBzBxrYU/FekOnkFemTuE0TkLBI1Y12zYGmfCMiyhLsn1iN8OGDDflG80NMxQSinyUelM3lbHQGg4y4IMwGnxgfkJUrIddsx1mWKuZ3z1GzT5gyBgEXKuRmb7Jmtt16O5gbPwgw/rToowIsvCNBzLUDllpzAS1JpjoJwtGdeaSxt//E8Z72qLPkVermr7hVWMmBBmhxoOoEeISZNoDlGn9nAn2aUO0fciQIYF7AXWjC8lSY43/evatoYddeDrwyAs0NMK7NVAy0FMpymzzbhdKxEGWwCBTs9ca0q8IORMu5AxBGsdfXDk04kJMHcNDr+ZncQgyoGSky3ouCF0FC30GhUQ4z4NiBbW2IKSO1giNodKSZOvgO+/KPyyqT5uJgpXds6t+MK3G7KdbaHZ+MQQijerWcRfKCBDiAxesmbbdOuIQN1HPMAioFevOk67nwQiWXTJ1I0isrl31RwgTfVwyLZjVhnKf3Dn1PLOKpWAoFjXt2F0arwQzM7okG3dbHoiBw4aUuj/w0wIhOBELrSbUgrFqFasJITDIgDphOgQQAUkwcMBhK/3vhoAARCHWUOB32sKJqtZhf/SnCaBANoBhDAcJxLYWmBgD34KU+KgeVqEDhvXbfjPwP779DYxftdmEalLoU5cnKK4cHYMTQppoQx7U3CCBMypdsQlqbhxDu36s+WNVaTxYu2KbzRqM/6E2bun0UwMqIsEObBO0dsx8uiUw/6kTOnW17S/toRTfR/OpbuBSNxXW0ytNu1pVJqqV5dTpUWAIkoSdKobeLQsSGVQT/gmqbSwjvzFjaP7PpuFiWUWJvta2v0APxQkPyacuiEIfXWLwExgFINggoWl5Kq01RW6kNG5C0/o27pzBDSacQCO0UAgyYjo39UFP6dYy5rf7W4bg/S5Swz1ojXXBmukdBBtqGGhzvA120zu04pdtdvvEwDX5BSga7L+BkiHWYBDcheWxQaaKag2Hmg4Ytr1TS06fkvGBDPfrqpoou6FNFsI6bTZH5258ht0FGvetucewfmqVpy8N9gAh8cizoaLXeb8kwH13D1r26PSbQq1+JOO4vU32/dDDIDONLqgg9Aq5+/1pIyyzuK5XNpeHZFrADrSp94SEt1aKe3X7lMSnMIb24EL6e3q/URGh/ZKapPxJM3aBIWQO03626Yrwrq97V061+LT6IALIxP/aECi2+8e44W60TNQ5oybabHdvS3fARyfuV//Q3CkeQYKhpgIFb2jKAudFG/dM+2KYqdaarWMuRXitl/9vIz7lmy+kbLiYB/0gg38Jgz9qNS84IVqpd58ZVHA/bkKK18mDBbdc+ZT9/7VAhtJ43G1eSIV4wD7ZlIMB0w1Qrv+8LYzpqQV/ASSDYkM7tEdXonCa2LTr+3Swms2EQbZb9dti3H7a6YXGhCuOWhfldq3ZtusHxA1lCim3W1AnktliyKkLqRC05wWKpt36uoGbuvpt2X69Fpu5MRSGS5/Yw4nCxPkp06w/2aRC01WUgb+Z2qNRnbkxlJAK6+bI4NWqpuk92xehDV84d9GCcFu9skCmbQL//WCSn1RHPLBqN+utAyg9BmOFQaauRnfmGEJV+P0IQ1zIfrqARcggUcQFmOgsMtQpfVwfzfSmt3wUB7McrHfrEGRsqPWBYW2WGEqqA5Gv2zVfr5kmCDdc5W3d3YTEIFhQHetCbQRT00/QcJYYQtQX5LjbWwTFSaiabdv39jnUGoNELw2DoQ8GpccsMaRU8jvLtZ6cgVLQbNqtRxauzHPZS/RQJYOSMWeSoTSodWg3e4oUREzb++axZggBIziYocIg08SMOXsMQa3sXzEDjY0/zJNjzijo6uHlwO16s1aduTGk+Hyv21CLMDVTTdDYrcNNKQ0hOZPS3zzCOaX6fguUTG3WGFKf4UGQKXBHm3eyrxsjj6FxGM/tbn+1eJYYInR5u2UHyb7p1R82qOuOFO9UsP1WTd2CWWQY15/2ZoBtb+22lJSFdpsoULHfag4t5s8MQxHXqTiuN6u4mm/ay8eaa4CIGSoa0GC3W+HCeJYYUu4am7hjDeqIZv30DqEGHKGhSUOdyzj6YLhu7DOc7qk2BcoNcr+Fu5ya3hfbhFxcxxXAF/LgxbmNGWFYwWLIBBXTrt9tiHEPmkO03b6gyWeIoSsa90DNtL21DUiB1pglCMq2x8y/zQ5DSh5egTriy2NQnWLcs9jgg61AycwcQwgnhksW6iCyDxeIS5lORtbJdM7iMIKgAsBPg61TzSZuT/Hq9dbyghz37PoUgVLhUr4GGuZoeC9sH1AuSSCIsXPwGIbX+uL/Tg+O/vV4q2KUp3ZhTYFRt6Ife63DLa0yniGVEGQCYnar1equHR4cbSw0cC4fKi6X0ume1QeG/HH33r9gAOmoDg1aWKBkkFv35PTh8f5CgzOCj3yVXdfFx2lcMd0rMyBc+LcHloFPw4x/8EV/8OXJ6ZPj7QV8QFZIqDWgpDIok7rONS6pPuV+KAh9fYcQAx9mGt8ifmeT+yTUo3k4ra9aMv8PpVPOECfY3v9gpE7xSZnpzgjvx4esDH1z+jaM/ir8AiubbYK9J18vP/+R+hEhQoQIESJEiBAhQoQInwz++jsLo3ei92Kk7YX2o98COXKWDP+8vCOXn/tdUA8S9lkwf2JFveRcfTsUY8Nt+7Vg/07wD/QM+877FNWhMQUlNvkdPC4H9tgnRYMPpkR9FtJWnWfDbXuE+luih8tj5n+LhPqf9hvQwQ5q5re5wEa1+ODd+g3gXIP/hhHXkRyeGbYcOKJp6hD8DNqqn+ELMnbh+8BYcEz91C5eN7i4ajFxgoSNfQ6CjjUnvXeMDVsZG/ty6J38wsdc+A7X/sXf193fAJpJJq8lR0EZMV5eu5Z8TjkLOd46tt2DF4VB0+d7hQxOGyvzg+Hcu3CxZLLD9Ix6MR8g+bxggCGEacbVRV8SbeLDmMmlisVd+D9d7OMFhR6/Xiqmc3uDx3ni3NjJFrNnZW6RQr6YTmHLdLqYzeVXCmC4HBlaZD4Lx/B4D6livsO1m9fhExDB0dy7RWZRNjBwJs6v7u7mOtbEH+HLZBNOCeilFAYM42QxV3Kud0iw3QJiwCs4kO8gl7c57LpCCVDM7bxmSJECw5TjwHXSqR6KwJAwYBi6haWS4+RfkiF37CyVnETx5aT5+QznPlv5zMcK4rMVsFJdI/NFp5TIBI/Echi4UmlpEQiClWIrH+f51bRTKl5fJHGN6MiwlPpsGDsdxjI7wcURP2RzcGfAQMIOnUw7TsLZzUzeSrOJ9I3Rg7h7i1qZd6lSeiU4QtZzjpNNqkcshzpRLiTzu6VS/hVw54phNjN6PZ0NbzgRhTcw1EvroUi2ni0lUgkntzgZWiEgw3lihSI74zpXj42QTt5x4E5rVIdfdtJO4qxsaRju4ppl+fFds6DvHexvHoZXjWEqm+FaKAOpLyeAK1s9lQNvIuUfEk7xebCCAymY7GVh7B0nfd7THRNleINY4786dQ88b6kDPdThpVMChwo9B9xvxUQ5mXWc668Z3Ij5tJPLkA983TPlHO5e6g1VzRhlGj2H8ev8lMDPsNhEv8j1fQy5csVUBu7/25yyIMvPa4X5G/M/D9pBolxJOcUdwn2GNz/M0KLnpdKLTG8M0VxSO6SQLRWvgUF9NIaaVn6XKKV/JBjsnVQSU5hCYXV3tRDqsMXXrzulXIf9coZkwBCMGN5WyhWIcR0CUEb7eAzRmJYcZ3WP7Ow6qbNMX4EW/jT3pwFDdDOymHUg1P8yK2UgJNbBx88M7r+fZJYgZRkWeVlExyd/AMN+ELDCAZwyi+wtlYpL19DNIOb3Ga7ODY0hJJNMFnusGF7NMB2ik8YsiC/+Ej7EKqrRHuBTSPKFU0z6EYVTiDMYdzgmxd1zOtmdfn4s7V9UG/JyxuPgitlk5l1pdTEU4Aq5RC7EUD2UPl9M5Nc5MlwNjWHAUBvepskzL1eVVfsnqZiDiLaOUWynmFjtTFaB+wwFeT6PsnHlNRm6g1yLZxLnhtW5ngx/2cA4hq+yzmqB+VYKmgAul7xxYy9oYN1MXgvhpxymvvlgsxSIiVwptQI/OSus4tCO7lv93QzBSgloTsDSazK0GxS6zjqL653155lwkTSGIVscYgi6DqRbNtkb+PWlqwPRVgRF42TfZIIvKvLfVFB1Y+YdJKX1iX6Zm8+Qk52cEsSvycjVMRPmc6v5TthyPsQQlGsedWiuxxACSykRwME/6dx8HMoI/+zNXCnhQJzB355nE9k9MkkEmoY8V+XNj6+Hqj3UMgVQxIBERkPt5fMEhuFIo8LhqyywHlipXzf1+spvQj7F+iX14sWLVNFJf/Y6uBTGZ4gzwMqvmzr5RGrOmGQNFTAcnX7xX4PYQLNJpOGmg59oGObHMgTu1yDSdHiQD/tX4X5f2c3VxG4yHi/HM5ny26squPXfWp4rJXLrPmOOiSlfmLyV4viAltSGpxdQL+6kS86bt3kHSwEL5DgfxxBKJ8MpQWHQz/iWmq7QelMcyBAUAyeWBXIGFP319d6kkMbe5kq788GVNA5Rp7gyQYI9hoypTKUNTz2BE65iJiR7kJ9BoF42hhD7CqslGJg+Q/WFg6Q3BaUYortTqL2Uys6+6t8bspNCPaMqaMItI1sC/hNmOI+ZwJ8RozQUS3Xy81IpAUWDRX5MQX2a6emBEYbQM+Os5Ky+vahLA5tQDK/BDeBE6Rm4mJ8ooU7rLEHwIWgcIMBBY7yCKuPVRBk66t6T/pxfb+YWtFgGoh4YENznDDBIgbrz938NYqnatwZF0/Ndp3Rm9HQpCMueftH92WCfoRKc8OtK0cm/xQ8FoyDPUxhnWLALjkFiKSXmDD6pjcUMGBbncW7UQvQOq6lRnfyoakKCNWEnn0KB6o9NiCEj+AVsaMX5AlHVU2kVVJvVh7KOMEP1fgcyvIaCjcdfOGCVYfdHWVSY2NbpgKGm+eSwS1DUomwCj4Mojt6HvqeBR2KtqPX88GqBY1NLwwFOQvGYe0nifn24epOHVJqaHR1myIwzdWHfgbOldDI0xcZ4IZ+CyD2pfBEwJCQ05w69sjQwOKwroCbkxJ9FA9NKJTJqn55i2LvE+t67XcfJrhgQX5BhAmcxeHhRg1t8mCHeu/Qrou7cTsqBLBNKD5pxlnbyE4s1yDD90+Iw9jI49ZlJQPy/gRU3Rh9uZRxI2j+qd4GVFV/6TZ//kIORTuTn4xbV/UhT3Bu5HpjBMEOOkz4v4hhu4TamzkX4+QaMtc7ViekaVfWkruau9pC7msvl1xmFMdstOe/KvghWIaAD9Wl+D6Pez7nSXFq1zabTIDKvQrxVbZQflrJXQ8jmlha5BcIM7pbmM6RqHm8JfA1CVFrFmXCXGJTTTjZuTcgRMxCbE8NwcutQ9LzKpVPohKH5+L2cmvyEWmC1mFA60yml09n8GQy6X8sScqPoDF8thYUXyeSKKh/ygEQnXyr+AD5azqdRaYd7BPyT4MxvJ7TlkWXOzs7mRvDuJiGv352fny2ScEXMSfLs/OwNeFnh3fnZuWp6/mblVcEgljZoMnKx87kXBaLf/Pf5WRLnG/1PZeTN2dy/X+OVzuZwaiCkpaimdV6cza1M6JE3zgzDiA+jDMmYxfFfIOnJyuCjQRCIeBwf/Y333hXk7YAgVPVGeeRqeB1N1+DvMu2pVEhOeDhOKZ6Gw+FlSsjDtAyH2WSKRIPqbHRJF0IfoQZkMmYNrQ3quLyHMxZMyVM2WDYjQc0FHaVK3IavhgkRn/XWeDxI41ynloWzGfArtKBQw4QWDuHDdU4t7Y/8V3dY6O9Phel+zCZChAgRIkSIECFChAgRIkSIECFChAgRIkSIECFChAgRIkSIECFChAgRIvwW/D/1pFsdE1G/hAAAAABJRU5ErkJggg==';
const b =
    'data:image/png;base64,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';
const c =
    'data:image/png;base64,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';
