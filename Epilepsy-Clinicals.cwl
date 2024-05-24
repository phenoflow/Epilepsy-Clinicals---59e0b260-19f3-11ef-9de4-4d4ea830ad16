cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  epilepsy-clinicals-reflex---primary:
    run: epilepsy-clinicals-reflex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  epilepsy-clinicals-control---primary:
    run: epilepsy-clinicals-control---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: epilepsy-clinicals-reflex---primary/output
  temporal-epilepsy-clinicals---primary:
    run: temporal-epilepsy-clinicals---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: epilepsy-clinicals-control---primary/output
  epilepsy-clinicals-consciousness---primary:
    run: epilepsy-clinicals-consciousness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: temporal-epilepsy-clinicals---primary/output
  grand-epilepsy-clinicals---primary:
    run: grand-epilepsy-clinicals---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: epilepsy-clinicals-consciousness---primary/output
  epilepsy-clinicals-epilepticu---primary:
    run: epilepsy-clinicals-epilepticu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: grand-epilepsy-clinicals---primary/output
  epilepsy-clinicals-motor---primary:
    run: epilepsy-clinicals-motor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: epilepsy-clinicals-epilepticu---primary/output
  epilepsy-clinicals---primary:
    run: epilepsy-clinicals---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: epilepsy-clinicals-motor---primary/output
  epilepsy-clinicals-month---primary:
    run: epilepsy-clinicals-month---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: epilepsy-clinicals---primary/output
  epilepsy-clinicals-petit---primary:
    run: epilepsy-clinicals-petit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: epilepsy-clinicals-month---primary/output
  epilepsy-clinicals-impairment---primary:
    run: epilepsy-clinicals-impairment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: epilepsy-clinicals-petit---primary/output
  focal-epilepsy-clinicals---primary:
    run: focal-epilepsy-clinicals---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: epilepsy-clinicals-impairment---primary/output
  complex-epilepsy-clinicals---primary:
    run: complex-epilepsy-clinicals---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: focal-epilepsy-clinicals---primary/output
  epilepsy-clinicals-employment---primary:
    run: epilepsy-clinicals-employment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: complex-epilepsy-clinicals---primary/output
  partial-epilepsy-clinicals---primary:
    run: partial-epilepsy-clinicals---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: epilepsy-clinicals-employment---primary/output
  epilepsy-clinicals-specified---primary:
    run: epilepsy-clinicals-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: partial-epilepsy-clinicals---primary/output
  epilepsy-clinicals-seizure---primary:
    run: epilepsy-clinicals-seizure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: epilepsy-clinicals-specified---primary/output
  nonconvulsive-epilepsy-clinicals---primary:
    run: nonconvulsive-epilepsy-clinicals---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: epilepsy-clinicals-seizure---primary/output
  myoclonic-epilepsy-clinicals---primary:
    run: myoclonic-epilepsy-clinicals---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: nonconvulsive-epilepsy-clinicals---primary/output
  tonicclonic-epilepsy-clinicals---primary:
    run: tonicclonic-epilepsy-clinicals---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: myoclonic-epilepsy-clinicals---primary/output
  pyknoepilepsy-epilepsy-clinicals---primary:
    run: pyknoepilepsy-epilepsy-clinicals---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: tonicclonic-epilepsy-clinicals---primary/output
  nocturnal-epilepsy-clinicals---primary:
    run: nocturnal-epilepsy-clinicals---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: pyknoepilepsy-epilepsy-clinicals---primary/output
  epilepsy-clinicals-otohara---primary:
    run: epilepsy-clinicals-otohara---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: nocturnal-epilepsy-clinicals---primary/output
  epilepsy-clinicals-treatment---primary:
    run: epilepsy-clinicals-treatment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: epilepsy-clinicals-otohara---primary/output
  epilepsy-clinicals-resolved---primary:
    run: epilepsy-clinicals-resolved---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: epilepsy-clinicals-treatment---primary/output
  epilepsy-clinicals-automatism---primary:
    run: epilepsy-clinicals-automatism---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: epilepsy-clinicals-resolved---primary/output
  limbic-epilepsy-clinicals---primary:
    run: limbic-epilepsy-clinicals---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: epilepsy-clinicals-automatism---primary/output
  epilepsy-clinicals-forms---primary:
    run: epilepsy-clinicals-forms---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: limbic-epilepsy-clinicals---primary/output
  epilepsy-clinicals-activity---primary:
    run: epilepsy-clinicals-activity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: epilepsy-clinicals-forms---primary/output
  epilepsy-clinicals-lennoxgastaut---primary:
    run: epilepsy-clinicals-lennoxgastaut---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: epilepsy-clinicals-activity---primary/output
  epilepsy-clinicals-psychosis---primary:
    run: epilepsy-clinicals-psychosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: epilepsy-clinicals-lennoxgastaut---primary/output
  epilepsy---primary:
    run: epilepsy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: epilepsy-clinicals-psychosis---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: epilepsy---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
