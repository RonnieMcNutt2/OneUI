.class Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;
.super Ljava/lang/Object;
.source "IAFDDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IAFDDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IAFD_CONTROLINFO"
.end annotation


# instance fields
.field private IAFDDBControlFeature:Z

.field private JE_cstack_maxSize:I

.field private JE_cstack_start:Ljava/lang/String;

.field private NE_cHeader_maxSize:I

.field private NE_cstack_maxSize:I

.field private NE_cstack_start:Ljava/lang/String;

.field private callstack_maxSize:I

.field private dbVersion:I

.field private domainRepair:Ljava/lang/String;

.field private enable:Z

.field private enableCSCFilter:Z

.field private enableDetectAll32bitApps:Z

.field private enableWhiteList:Z

.field private hashMapOfRepairDBInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isSupportRepair:Z

.field private mainLanguage:Ljava/lang/String;

.field private minVocAppVersionCode:J

.field private minVocAppVersionCodeForOnlyShow:J

.field private postfixRepair:Ljava/lang/String;

.field private prefixRepair:Ljava/lang/String;

.field private reMovableAppPaths:[Ljava/lang/String;

.field private reason_maxSize:I

.field private supportCSCs:[Ljava/lang/String;

.field private supportflagDetectAll32bitApps:I

.field private webView_pkgName:Ljava/lang/String;

.field private whiteList:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetJE_cstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I
    .registers 1

    iget p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->JE_cstack_maxSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetJE_cstack_start(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->JE_cstack_start:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetNE_cstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I
    .registers 1

    iget p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cstack_maxSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetNE_cstack_start(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cstack_start:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcallstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I
    .registers 1

    iget p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->callstack_maxSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdomainRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->domainRepair:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetenable(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetenableDetectAll32bitApps(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableDetectAll32bitApps:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisSupportRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->isSupportRepair:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmainLanguage(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->mainLanguage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetminVocAppVersionCode(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)J
    .registers 3

    iget-wide v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->minVocAppVersionCode:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetminVocAppVersionCodeForOnlyShow(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)J
    .registers 3

    iget-wide v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->minVocAppVersionCodeForOnlyShow:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetpostfixRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->postfixRepair:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprefixRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->prefixRepair:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreMovableAppPaths(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->reMovableAppPaths:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I
    .registers 1

    iget p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->reason_maxSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsupportflagDetectAll32bitApps(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I
    .registers 1

    iget p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->supportflagDetectAll32bitApps:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwebView_pkgName(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->webView_pkgName:Ljava/lang/String;

    return-object p0
.end method

.method constructor <init>()V
    .registers 1

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ZILjava/lang/String;IILjava/lang/String;II)V
    .registers 9
    .param p1, "enable"    # Z
    .param p2, "jcsms"    # I
    .param p3, "jcss"    # Ljava/lang/String;
    .param p4, "ncsms"    # I
    .param p5, "nchms"    # I
    .param p6, "ncss"    # Ljava/lang/String;
    .param p7, "rsms"    # I
    .param p8, "csms"    # I

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    iput-boolean p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enable:Z

    .line 769
    iput p2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->JE_cstack_maxSize:I

    .line 770
    iput-object p3, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->JE_cstack_start:Ljava/lang/String;

    .line 771
    iput p4, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cstack_maxSize:I

    .line 772
    iput p5, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cHeader_maxSize:I

    .line 773
    iput-object p6, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cstack_start:Ljava/lang/String;

    .line 774
    iput p7, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->reason_maxSize:I

    .line 775
    iput p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->callstack_maxSize:I

    .line 776
    return-void
.end method


# virtual methods
.method getDBVersion()I
    .registers 2

    .line 786
    iget v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->dbVersion:I

    return v0
.end method

.method gethashMapOfRepairDBInfo(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 948
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->hashMapOfRepairDBInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 949
    :cond_a
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->hashMapOfRepairDBInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method inithashMapValues(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p2, "orgStr"    # Ljava/lang/String;
    .param p3, "a1"    # Ljava/lang/String;
    .param p4, "a2"    # Ljava/lang/String;
    .param p5, "splitStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 894
    .local p1, "linkHMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-virtual {p2, p5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 895
    .local v0, "strTmp":[Ljava/lang/String;
    const-string v1, "0"

    const-string v2, "0"

    const-string v3, "0"

    const-string v4, "vocApp"

    const-string v7, "0"

    move-object v5, p3

    move-object v6, p4

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 896
    .local v1, "values":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_17
    if-ge v4, v2, :cond_6e

    aget-object v5, v0, v4

    .line 897
    .local v5, "str":Ljava/lang/String;
    const-string v6, "Pile"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 898
    aput-object v5, v1, v3

    goto :goto_6b

    .line 899
    :cond_26
    const-string v6, "onekey"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_32

    .line 900
    aput-object v5, v1, v7

    goto :goto_6b

    .line 901
    :cond_32
    const-string v6, "onejump"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 902
    aput-object v5, v1, v7

    goto :goto_6b

    .line 903
    :cond_3d
    const-string v6, "NoCheckUpdate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 904
    const/4 v6, 0x2

    aput-object v5, v1, v6

    goto :goto_6b

    .line 905
    :cond_49
    const-string v6, "SmartMApp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_55

    .line 906
    aput-object v5, v1, v7

    goto :goto_6b

    .line 907
    :cond_55
    const-string v6, "IAFDSelf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 908
    aput-object v5, v1, v7

    goto :goto_6b

    .line 909
    :cond_60
    const-string v6, "Only32bit"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 910
    const/4 v6, 0x6

    aput-object v5, v1, v6

    .line 896
    .end local v5    # "str":Ljava/lang/String;
    :cond_6b
    :goto_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 913
    :cond_6e
    aget-object v2, v0, v3

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    return-void
.end method

.method isInWhiteList(Ljava/lang/String;)Z
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 879
    const-string v0, "com.sec.android.iaft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 880
    :cond_a
    iget-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableWhiteList:Z

    const/4 v2, 0x0

    if-nez v0, :cond_10

    return v2

    .line 881
    :cond_10
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->whiteList:[Ljava/lang/String;

    array-length v3, v0

    move v4, v2

    :goto_14
    if-ge v4, v3, :cond_22

    aget-object v5, v0, v4

    .line 882
    .local v5, "item":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 883
    return v1

    .line 881
    .end local v5    # "item":Ljava/lang/String;
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 886
    :cond_22
    return v2
.end method

.method setCSCFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "suggestion"    # Ljava/lang/String;
    .param p3, "salesCode"    # Ljava/lang/String;

    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableCSCFilter:Z

    .line 810
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->supportCSCs:[Ljava/lang/String;

    .line 811
    const/4 v1, 0x0

    if-eqz p1, :cond_13

    .line 812
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 813
    iput-boolean v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableCSCFilter:Z

    .line 816
    :cond_13
    if-eqz p2, :cond_23

    .line 817
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_23

    .line 818
    const-string v2, ">,<"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->supportCSCs:[Ljava/lang/String;

    .line 821
    :cond_23
    iget-boolean v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableCSCFilter:Z

    if-eqz v2, :cond_4a

    .line 822
    const/4 v2, 0x0

    .line 823
    .local v2, "enableTmp":Z
    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->supportCSCs:[Ljava/lang/String;

    if-eqz v3, :cond_3f

    if-eqz p3, :cond_3f

    .line 824
    array-length v4, v3

    move v5, v1

    :goto_30
    if-ge v5, v4, :cond_3f

    aget-object v6, v3, v5

    .line 825
    .local v6, "csc":Ljava/lang/String;
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 826
    const/4 v2, 0x1

    .line 827
    goto :goto_3f

    .line 824
    .end local v6    # "csc":Ljava/lang/String;
    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 831
    :cond_3f
    :goto_3f
    if-eqz v2, :cond_48

    iget-boolean v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enable:Z

    if-eqz v3, :cond_48

    .line 832
    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enable:Z

    goto :goto_4a

    .line 834
    :cond_48
    iput-boolean v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enable:Z

    .line 836
    .end local v2    # "enableTmp":Z
    :cond_4a
    :goto_4a
    return-void
.end method

.method setCallstack_maxSize(I)V
    .registers 2
    .param p1, "csms"    # I

    .line 784
    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->callstack_maxSize:I

    return-void
.end method

.method setDBVersion(I)V
    .registers 2
    .param p1, "dbVersion"    # I

    .line 785
    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->dbVersion:I

    return-void
.end method

.method setEnable(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 777
    iput-boolean p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enable:Z

    return-void
.end method

.method setIAFDDBControlFeature(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "suggestion"    # Ljava/lang/String;
    .param p3, "isCHN"    # Z

    .line 838
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->IAFDDBControlFeature:Z

    .line 839
    const/4 v0, 0x1

    if-eqz p1, :cond_10

    .line 840
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 841
    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->IAFDDBControlFeature:Z

    .line 844
    :cond_10
    iget-boolean v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->IAFDDBControlFeature:Z

    if-nez v1, :cond_15

    .line 845
    return-void

    .line 846
    :cond_15
    if-eqz p2, :cond_54

    .line 847
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_54

    .line 848
    const-string v1, ">,<"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, "strArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    array-length v3, v1

    if-ge v2, v3, :cond_54

    .line 850
    const-string v3, "Repair"

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 851
    add-int/lit8 v3, v2, 0x1

    aget-object v3, v1, v3

    const-string v4, "CHNONLY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 852
    if-eqz p3, :cond_42

    .line 853
    invoke-virtual {p0, v0}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setSupportRepair(Z)V

    .line 856
    :cond_42
    add-int/lit8 v3, v2, 0x1

    aget-object v3, v1, v3

    const-string v4, "ALL"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 857
    invoke-virtual {p0, v0}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setSupportRepair(Z)V

    .line 849
    :cond_51
    add-int/lit8 v2, v2, 0x2

    goto :goto_24

    .line 863
    .end local v1    # "strArray":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_54
    return-void
.end method

.method setJE_cstack_maxSize(I)V
    .registers 2
    .param p1, "jcsms"    # I

    .line 778
    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->JE_cstack_maxSize:I

    return-void
.end method

.method setJE_cstack_start(Ljava/lang/String;)V
    .registers 2
    .param p1, "jcss"    # Ljava/lang/String;

    .line 779
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->JE_cstack_start:Ljava/lang/String;

    return-void
.end method

.method setNE_cHeader_maxSize(I)V
    .registers 2
    .param p1, "nchms"    # I

    .line 781
    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cHeader_maxSize:I

    return-void
.end method

.method setNE_cstack_maxSize(I)V
    .registers 2
    .param p1, "ncsms"    # I

    .line 780
    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cstack_maxSize:I

    return-void
.end method

.method setNE_cstack_start(Ljava/lang/String;)V
    .registers 2
    .param p1, "ncss"    # Ljava/lang/String;

    .line 782
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cstack_start:Ljava/lang/String;

    return-void
.end method

.method setReason_maxSize(I)V
    .registers 2
    .param p1, "rsms"    # I

    .line 783
    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->reason_maxSize:I

    return-void
.end method

.method setSupportRepair(Z)V
    .registers 3
    .param p1, "isSupport"    # Z

    .line 889
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->isSupportRepair:Z

    .line 892
    return-void
.end method

.method setWhiteList(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "suggestion"    # Ljava/lang/String;

    .line 865
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableWhiteList:Z

    .line 866
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->whiteList:[Ljava/lang/String;

    .line 867
    if-eqz p1, :cond_13

    .line 868
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableWhiteList:Z

    .line 872
    :cond_13
    if-eqz p2, :cond_23

    .line 873
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    .line 874
    const-string v0, ">,<"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->whiteList:[Ljava/lang/String;

    .line 877
    :cond_23
    return-void
.end method

.method setenableDetectAll32bitApp(Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 7
    .param p1, "enable"    # Ljava/lang/Boolean;
    .param p2, "suggestion"    # Ljava/lang/String;

    .line 796
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableDetectAll32bitApps:Z

    .line 797
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->supportflagDetectAll32bitApps:I

    .line 798
    if-eqz p2, :cond_2a

    .line 799
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2a

    .line 800
    const-string v1, ">,<"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 801
    .local v1, "strArray":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "supportFlag"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 802
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->supportflagDetectAll32bitApps:I

    .line 806
    .end local v1    # "strArray":[Ljava/lang/String;
    :cond_2a
    return-void
.end method

.method sethashMapOfLinkForVocApp(Ljava/lang/String;)V
    .registers 11
    .param p1, "rule"    # Ljava/lang/String;

    .line 916
    if-eqz p1, :cond_5a

    .line 917
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5a

    .line 918
    const-string v0, ">,<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, "strArray":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 920
    .local v1, "linkHMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "pairlinks"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 921
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->minVocAppVersionCode:J

    .line 922
    const/4 v2, 0x2

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->domainRepair:Ljava/lang/String;

    .line 923
    const/4 v2, 0x3

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->prefixRepair:Ljava/lang/String;

    .line 924
    const/4 v2, 0x4

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->postfixRepair:Ljava/lang/String;

    .line 925
    const/4 v2, 0x5

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->mainLanguage:Ljava/lang/String;

    .line 926
    const/4 v2, 0x6

    move v8, v2

    .local v8, "i":I
    :goto_41
    array-length v2, v0

    if-ge v8, v2, :cond_58

    .line 927
    aget-object v4, v0, v8

    add-int/lit8 v2, v8, 0x1

    aget-object v5, v0, v2

    add-int/lit8 v2, v8, 0x2

    aget-object v6, v0, v2

    const-string v7, "_"

    move-object v2, p0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->inithashMapValues(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    add-int/lit8 v8, v8, 0x3

    goto :goto_41

    .line 930
    .end local v8    # "i":I
    :cond_58
    iput-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->hashMapOfRepairDBInfo:Ljava/util/HashMap;

    .line 933
    .end local v0    # "strArray":[Ljava/lang/String;
    .end local v1    # "linkHMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_5a
    return-void
.end method

.method sethashMapOfLinkForVocAppOnlyShow(Ljava/lang/String;)V
    .registers 11
    .param p1, "rule"    # Ljava/lang/String;

    .line 935
    if-eqz p1, :cond_3f

    .line 936
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3f

    .line 937
    const-string v0, ">,<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, "strArray":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "OnlyShowList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 939
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->minVocAppVersionCodeForOnlyShow:J

    .line 940
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_27
    array-length v2, v0

    if-ge v1, v2, :cond_3f

    .line 941
    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->hashMapOfRepairDBInfo:Ljava/util/HashMap;

    aget-object v5, v0, v1

    add-int/lit8 v2, v1, 0x1

    aget-object v6, v0, v2

    add-int/lit8 v2, v1, 0x2

    aget-object v7, v0, v2

    const-string v8, ":;"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->inithashMapValues(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    add-int/lit8 v1, v1, 0x3

    goto :goto_27

    .line 946
    .end local v0    # "strArray":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_3f
    return-void
.end method

.method setreMovableAppPaths(Ljava/lang/String;)V
    .registers 3
    .param p1, "rule"    # Ljava/lang/String;

    .line 788
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 789
    const-string v0, ">,<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->reMovableAppPaths:[Ljava/lang/String;

    goto :goto_12

    .line 791
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->reMovableAppPaths:[Ljava/lang/String;

    .line 793
    :goto_12
    return-void
.end method

.method setwebView_pkgName(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 794
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->webView_pkgName:Ljava/lang/String;

    return-void
.end method
