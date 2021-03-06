HEADERS += \
    ../VNA_embedded/Application/Communication/Protocol.hpp \
    Calibration/amplitudecaldialog.h \
    Calibration/calibration.h \
    Calibration/calibrationtracedialog.h \
    Calibration/calkit.h \
    Calibration/calkitdialog.h \
    Calibration/measurementmodel.h \
    Calibration/receivercaldialog.h \
    Calibration/sourcecaldialog.h \
    CustomWidgets/colorpickerbutton.h \
    CustomWidgets/informationbox.h \
    CustomWidgets/siunitedit.h \
    CustomWidgets/tilewidget.h \
    CustomWidgets/toggleswitch.h \
    CustomWidgets/touchstoneimport.h \
    Device/device.h \
    Device/devicelog.h \
    Device/firmwareupdatedialog.h \
    Device/manualcontroldialog.h \
    Generator/generator.h \
    Generator/signalgenwidget.h \
    SpectrumAnalyzer/spectrumanalyzer.h \
    SpectrumAnalyzer/tracewidgetsa.h \
    Tools/eseries.h \
    Tools/impedancematchdialog.h \
    Traces/Math/dft.h \
    Traces/Math/medianfilter.h \
    Traces/Math/tdr.h \
    Traces/Math/tracemath.h \
    Traces/Math/tracematheditdialog.h \
    Traces/Math/windowfunction.h \
    Traces/fftcomplex.h \
    Traces/markerwidget.h \
    Traces/trace.h \
    Traces/tracecsvexport.h \
    Traces/traceeditdialog.h \
    Traces/traceimportdialog.h \
    Traces/tracemarker.h \
    Traces/tracemarkermodel.h \
    Traces/tracemodel.h \
    Traces/traceplot.h \
    Traces/tracesmithchart.h \
    Traces/tracetouchstoneexport.h \
    Traces/tracewidget.h \
    Traces/tracexyplot.h \
    Traces/xyplotaxisdialog.h \
    Util/qpointervariant.h \
    Util/util.h \
    VNA/portextension.h \
    VNA/tracewidgetvna.h \
    VNA/vna.h \
    appwindow.h \
    averaging.h \
    csv.h \
    json.hpp \
    mode.h \
    preferences.h \
    savable.h \
    touchstone.h \
    unit.h

SOURCES += \
    ../VNA_embedded/Application/Communication/Protocol.cpp \
    Calibration/amplitudecaldialog.cpp \
    Calibration/calibration.cpp \
    Calibration/calibrationtracedialog.cpp \
    Calibration/calkit.cpp \
    Calibration/calkitdialog.cpp \
    Calibration/measurementmodel.cpp \
    Calibration/receivercaldialog.cpp \
    Calibration/sourcecaldialog.cpp \
    CustomWidgets/colorpickerbutton.cpp \
    CustomWidgets/informationbox.cpp \
    CustomWidgets/siunitedit.cpp \
    CustomWidgets/tilewidget.cpp \
    CustomWidgets/toggleswitch.cpp \
    CustomWidgets/touchstoneimport.cpp \
    Device/device.cpp \
    Device/devicelog.cpp \
    Device/firmwareupdatedialog.cpp \
    Device/manualcontroldialog.cpp \
    Generator/generator.cpp \
    Generator/signalgenwidget.cpp \
    SpectrumAnalyzer/spectrumanalyzer.cpp \
    SpectrumAnalyzer/tracewidgetsa.cpp \
    Tools/eseries.cpp \
    Tools/impedancematchdialog.cpp \
    Traces/Math/dft.cpp \
    Traces/Math/medianfilter.cpp \
    Traces/Math/tdr.cpp \
    Traces/Math/tracemath.cpp \
    Traces/Math/tracematheditdialog.cpp \
    Traces/Math/windowfunction.cpp \
    Traces/fftcomplex.cpp \
    Traces/markerwidget.cpp \
    Traces/trace.cpp \
    Traces/tracecsvexport.cpp \
    Traces/traceeditdialog.cpp \
    Traces/traceimportdialog.cpp \
    Traces/tracemarker.cpp \
    Traces/tracemarkermodel.cpp \
    Traces/tracemodel.cpp \
    Traces/traceplot.cpp \
    Traces/tracesmithchart.cpp \
    Traces/tracetouchstoneexport.cpp \
    Traces/tracewidget.cpp \
    Traces/tracexyplot.cpp \
    Traces/xyplotaxisdialog.cpp \
    VNA/portextension.cpp \
    VNA/tracewidgetvna.cpp \
    VNA/vna.cpp \
    appwindow.cpp \
    averaging.cpp \
    csv.cpp \
    main.cpp \
    mode.cpp \
    preferences.cpp \
    touchstone.cpp \
    unit.cpp

LIBS += -lusb-1.0
unix:LIBS += -L/usr/lib/
win32:LIBS += -L"$$_PRO_FILE_PWD_" # Github actions placed libusb here

QT += widgets

FORMS += \
    Calibration/addamplitudepointsdialog.ui \
    Calibration/amplitudecaldialog.ui \
    Calibration/automaticamplitudedialog.ui \
    Calibration/calibrationtracedialog.ui \
    Calibration/calkitdialog.ui \
    CustomWidgets/tilewidget.ui \
    CustomWidgets/touchstoneimport.ui \
    Device/devicelog.ui \
    Device/firmwareupdatedialog.ui \
    Device/manualcontroldialog.ui \
    Generator/signalgenwidget.ui \
    Tools/impedancematchdialog.ui \
    Traces/Math/dftdialog.ui \
    Traces/Math/dftexplanationwidget.ui \
    Traces/Math/medianexplanationwidget.ui \
    Traces/Math/medianfilterdialog.ui \
    Traces/Math/newtracemathdialog.ui \
    Traces/Math/tdrdialog.ui \
    Traces/Math/tdrexplanationwidget.ui \
    Traces/Math/tracematheditdialog.ui \
    Traces/markerwidget.ui \
    Traces/smithchartdialog.ui \
    Traces/tracecsvexport.ui \
    Traces/traceeditdialog.ui \
    Traces/traceimportdialog.ui \
    Traces/tracetouchstoneexport.ui \
    Traces/tracewidget.ui \
    Traces/xyplotaxisdialog.ui \
    VNA/portextensioneditdialog.ui \
    main.ui \
    preferencesdialog.ui

DISTFILES +=

RESOURCES += \
    icons.qrc

CONFIG += c++14
REVISION = $$system(git rev-parse HEAD)
DEFINES += GITHASH=\\"\"$$REVISION\\"\"
DEFINES += FW_MAJOR=0 FW_MINOR=1 FW_PATCH=0 FW_SUFFIX=\\"\"-alpha.2\\"\"
