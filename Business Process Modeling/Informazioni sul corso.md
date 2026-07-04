### Objectives

The course aims to reconcile abstraction techniques and high-level diagrammatic notations together with modular and structural approaches. The objective is to show the impact of the analysis and verification properties of business processes on the choice of the best suited specification and modelling languages. At the end of the course, the students will gain some familiarity with business process terminology, with different models and languages for the representation of business processes, with different kinds of logical properties that such models can satisfy and with different analysis and verification techniques. The students will also experiment with some tools for the design, synthesis and analysis of business processes.

---

### Course Overview

Business process management. Evolution of Enterprise Systems Architectures. Conceptual models and abstraction mechanisms. Petri nets: invariants, S-systems, T-systems, Free-choice systems and their properties. Workflow nets and workflow modules. Workflow patterns. Event-driven Process Chains (EPC). Business Process Modelling Notation (BPMN), Process performance analysis. Process simulation. Process Mining.
### Exam

The evaluation will be based on a group project and an oral exam.

[Registration](https://esami.unipi.it/esami/ "https://esami.unipi.it/esami/") to the exam is mandatory.

The student must demonstrate the ability to put into practice and to execute, with critical awareness, the activities illustrated or carried out under the guidance of the teacher during the course.

#### Project FAQ

- **What are the prerequisites for having a project assigned?** _There are no prerequisites, but the teacher will assume that you have already studied all the material of the course (if this is not the case, then it is very likely that you won't be able to deliver the project in time)._
    
- **How many people can work together on the same project?** _Projects are assigned to individuals or to groups of two people. Exceptionally, groups of three people can be allowed, but a solid motivation is needed._
    
- **When is it possible to request the project description?** _After the end of the lectures, any (working) day of the year._
    
- **How do we request a project description?** _By sending an email to the teacher (possibly including the text `BPM project request` in the object, and mandatorily including full names, student ids and email addresses of all students in the group). The teacher will then reply (in a few days) with the project description._
    
- **Which graphical notation should we use in the modelling?** _You decide: typically EPC is fine for representing orchestrations, BPMN for orchestration, collaboration and choreography diagrams._
    
- **Which tools should we use to design EPC diagrams or BPMN diagrams?** _Some tools are suggested in this page, but you are free to evaluate any other tool and then choose the one that you prefer. For example some cross-platform tools are: yEd is versatile, user-friendly, has powerful automatic layout features but cannot export diagrams in .epml and .bpmn formats; Visual Paradigm online is also versatile and can export diagrams in several formats; Camunda modeler offers the essential features for drawing nice BPMN diagrams. Please, briefly motivate your choice in the report._
    
- **Which tools should we use for soundness analysis of workflow nets?** _My suggestion is to try to use Woped first, and then Woflan as a backup (as a Microsoft Windows application or as a ProM plugin, running on all platforms) if Woped is not responding fast enough or you like to collect information about error sequences to repair your model. If you find out other tools that can be used to the purpose, feel free to use them as well._
    
- **How do we convert graphical diagrams into workflow nets?** _Since January 2026, a prototype conversion tool has been available online at [https://bpmn2petrinet.com/](https://bpmn2petrinet.com/ "https://bpmn2petrinet.com/"). For the best experience, Google Chrome is recommended. Please note that the tool is still in its early stages of development, so the results may not always match expectations. In some cases, manual conversion may therefore be necessary. ProM also provides some conversion plugins; however, their output is typically more complex than the approach presented in the course. If you discover other tools that help speed up the conversion, feel free to use them._
    
- **When is the deadline for submitting the project?** _There is no fixed deadline; however, on average, the work requires at least one week of effort._
    
- **What does it happen if a person leaves the group?** _You must notify immediately the teacher and choose if you prefer to complete the work individually or to request another project later on._
    
- **How do we deliver the project?** _You must send the teacher a short project report in .pdf format together with the source files of all diagrams and nets you designed. Optionally, you can submit the soundness analysis checklist (available on the Microsoft Teams channel) for any of your model._
    
- **When do we discuss the project?** _Preferably, at the first exam session that follows the delivery of the project, see the [Academic calendar of activities](https://didattica.di.unipi.it/en/master-programme-in-data-science-and-business-informatics/academic-calendar-2025-2026/ "https://didattica.di.unipi.it/en/master-programme-in-data-science-and-business-informatics/academic-calendar-2025-2026/")._
    
- **Is it necessary to have already delivered the project in order to register for the exam?** _No, it is not. But of course the project must be delivered in time for being discussed at the actual oral exam._
    

#### Exam FAQ

- **How do we register for the exam?** _As usual, you must enter your choice on the [ESAMI](https://esami.unipi.it/esami/ "https://esami.unipi.it/esami/") portal._
    
- **What are the dates of the exam?** _THE DATES ADVERTISED IN THE ESAMI PORTAL ARE NOT NECESSARILY THOSE OF THE ACTUAL EXAM. After you register for the exam, on the basis of the projects received and any other constraint communicated by each student, the teacher will post a tentative schedule on this web page and will inform you by email or on Teams._
    
- **How is the exam organized?** _The exam is oral and it is organised in two parts: the first part will focus on the project discussion, the second part will involve all topics covered by the course._
    
- **How is the project discussion organized?** _ALL GROUP MEMBERS MUST BE PRESENT TO THE PROJECT DISCUSSION. All group members must demonstrate they have participated to all the activites of the project. A negative evaluation of the project may require to rework some parts, submit a revised report and schedule a new exam (possibly at the next exam session). A positive evaluation of the project allows each group member to access the second part of the exam._
    
- **How is the second part of the exam organized?** _DIFFERENT GROUP MEMBERS CAN ASK TO SCHEDULE THE SECOND PART OF THE EXAM ON DIFFERENT DAYS. Questions may involve (but are not limited to): most relevant concepts, definitions, terminology and techniques; their intuitive meaning and formalization; proof sketches of formal statements; small-sized exercises. Arguments marked as optional in the lectures table below can be discussed upon student request._
    
- **Is it possible to pass the first part of the exam and fail the second?** _Let's hope it won't happen, but yes, it is possible, in which case the student will need to register for one of the next exam sessions. Depending on each single case, a new project may also be assigned._