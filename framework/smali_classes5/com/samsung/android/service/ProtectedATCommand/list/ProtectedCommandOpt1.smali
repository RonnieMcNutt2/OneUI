.class public Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;
.super Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;
.source "ProtectedCommandOpt1.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;-><init>()V

    .line 27
    const/16 v0, 0xa3

    :try_start_5
    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->addATCommands()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 31
    goto :goto_f

    .line 29
    :catch_b
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f
    return-void
.end method


# virtual methods
.method protected addATCommands()V
    .registers 4

    .line 36
    const-string v0, "AT+ENGMODES=8,0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 37
    const-string v0, "AT+FUNCTEST=0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 38
    const-string v0, "AT+RGBPDISP=0,1,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 39
    const-string v0, "AT+FIRMVERS=3,2,7"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 40
    const-string v0, "AT+FIRMVERS=3,3,7"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 41
    const-string v0, "AT+DISPTEST=1,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 42
    const-string v0, "AT+HEADINFO=1,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 43
    const-string v0, "AT+FUNCTEST=0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 44
    const-string v0, "AT+VIBRTEST=0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 45
    const-string v0, "AT+VIBRTEST=0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 46
    const-string v0, "AT+LOOPTEST=0,0,9"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 47
    const-string v0, "AT+LOOPTEST=0,1,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 48
    const-string v0, "AT+LOOPTEST=0,1,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 49
    const-string v0, "AT+LOOPTEST=0,0,8"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 50
    const-string v0, "AT+LIGHTEST=0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 51
    const-string v0, "AT+LIGHTEST=0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 52
    const-string v0, "AT+LIGHTEST=1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 53
    const-string v0, "AT+BARCODEE=0,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 54
    const-string v0, "AT+BARCODEE=0,2,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 55
    const-string v0, "AT+CONNTEST=3,0,2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 56
    const-string v0, "AT+ARPCHECK=1,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 57
    const-string v0, "AT+CHIPIDTT=1,0,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 58
    const-string v0, "AT+CHIPIDTT=1,0,1,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 59
    const-string v0, "AT+CHIPIDTT=1,0,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 60
    const-string v0, "AT+CHIPIDTT=1,0,0,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 61
    const-string v0, "AT+CHIPIDTT=1,0,0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 62
    const-string v0, "AT+CHIPIDTT=1,0,5,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 63
    const-string v0, "AT+CHIPIDTT=1,0,2,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 64
    const-string v0, "AT+ACTIVEID=0,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 65
    const-string v0, "AT+DEBUGLVC=1,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 66
    const-string v0, "AT+DEBUGLVC=0,5"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 67
    const-string v0, "AT+DEBUGLVC=0,6"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 68
    const-string v0, "AT+NFCMTEST=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 69
    const-string v0, "AT+NFCMTEST=1,5"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 70
    const-string v0, "AT+ALERTDIS=0,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 71
    const-string v0, "AT+ALERTDIS=0,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 72
    const-string v0, "AT+VERSNAME=1,1,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 73
    const-string v0, "AT+LDUCCSUM=1,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 74
    const-string v0, "AT+PDPBACKU=0,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 75
    const-string v0, "AT+PDPBACKU=0,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 76
    const-string v0, "AT+PDPBACKU=1,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 77
    const-string v0, "AT+ISOSECHW=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 78
    const-string v0, "AT+NCAMTEST=0,0,6,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 79
    const-string v0, "AT+SWIZSKIP=0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 80
    const-string v0, "AT+SWIZSKIP=0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 81
    const-string v0, "AT+SWIZSKIP=0,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 82
    const-string v0, "AT+SWIZSKIP=0,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 83
    const-string v0, "AT+SWIZSKIP=0,4"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 84
    const-string v0, "AT+SWIZSKIP=1,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 85
    const-string v0, "AT+SWIZSKIP=1,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 86
    const-string v0, "AT+TESTAPKU=1,0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 87
    const-string v0, "AT+UWBDTEST=0,3,0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 88
    const-string v0, "AT+RFNVCHKS=0,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 89
    const-string v0, "AT+UWBDTEST=0,0,0,7"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 90
    const-string v0, "AT+LDUCCSUM=1,0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 91
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,8,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 92
    const-string v0, "AT+DISPTEST=1,1"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 93
    const-string v0, "AT+DISPTEST=4,5"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 94
    const-string v0, "AT+DISPTEST=7,*"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 95
    const-string v0, "AT+DISPTEST=4,6"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 96
    const-string v0, "AT+DISPTEST=10,0"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 97
    const-string v0, "AT+DISPTEST=10,2"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 98
    const-string v0, "AT+DISPTEST=10,3"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 99
    const-string v0, "AT+RFNVCHKS=1,0,2"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 100
    const-string v0, "AT+DEBUGLVC=0,7"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 101
    const-string v0, "AT+DEBUGLVC=0,8"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 102
    const-string v0, "AT+TSSCHECK=0,0,0"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 103
    const-string v0, "AT+TSSCHECK=1,0,0"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 104
    const-string v0, "AT+FACMTEST=0,3,2,0"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 105
    const-string v0, "AT+FACMTEST=0,2,2,0"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 106
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 107
    const-string v0, "AT+UWBDTEST=0,0,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 108
    const-string v0, "AT+UWBDTEST=0,0,0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 109
    const-string v0, "AT+UWBDTEST=0,0,2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 110
    const-string v0, "AT+UWBDTEST=0,0,3,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 111
    const-string v0, "AT+UWBDTEST=0,0,5,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 112
    const-string v0, "AT+UWBDTEST=0,0,6,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 113
    const-string v0, "AT+UWBDTEST=0,1,3,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 114
    const-string v0, "AT+UWBDTEST=0,0,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 115
    const-string v0, "AT+UWBDTEST=0,0,4,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 116
    const-string v0, "AT+UWBDTEST=0,4,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 117
    const-string v0, "AT+COFPDATA=2,0,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 118
    const-string v0, "AT+COFPDATA=1,0,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 119
    const-string v0, "AT+COFPDATA=1,0,2,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 120
    const-string v0, "AT+COFPDATA=2,0,2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 121
    const-string v0, "AT+SVCAINIT=0,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 122
    const-string v0, "AT+SVCAINIT=1,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 123
    const-string v0, "AT+SELFTEST=4,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 124
    const-string v0, "AT+SELFTEST=3,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 125
    const-string v0, "AT+SELFTEST=2,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 126
    const-string v0, "AT+SELFTEST=2,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 127
    const-string v0, "AT+SELFTEST=3,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 128
    const-string v0, "AT+BOOTMODE=0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 129
    const-string v0, "AT+BOOTMODE=1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 130
    const-string v0, "AT+GEOMAGSS=3,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 131
    const-string v0, "AT+EGMC=1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 132
    const-string v0, "AT+EFUN=0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 133
    const-string v0, "AT+ESUO=4"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 134
    const-string v0, "AT+QUESTCHK=1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 135
    const-string v0, "AT+PMICTEST=0,1,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 136
    const-string v0, "AT+BATTTEST=1,9"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 137
    const-string v0, "AT+BATTTEST=2,4"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 138
    const-string v0, "AT+BATTTEST=3,9"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 139
    const-string v0, "AT+BATTTEST=3,10"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 140
    const-string v0, "AT+BATTTEST=3,11"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 141
    const-string v0, "AT+VIBRTEST=4,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 142
    const-string v0, "AT+VIBRTEST=0,8"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 143
    const-string v0, "AT+RSTCOUNT=1,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 144
    const-string v0, "AT+HAICTEST=4,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 145
    const-string v0, "AT+HAICTEST=5,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 146
    const-string v0, "AT+ZIGBTEST=1,0,0,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 147
    const-string v0, "AT+ZIGBTEST=0,0,0,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 148
    const-string v0, "AT+ZIGBTEST=0,0,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 149
    const-string v0, "AT+ZIGBTEST=0,0,0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 150
    const-string v0, "AT+ZIGBTEST=0,1,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 151
    const-string v0, "AT+ZIGBTEST=0,1,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 152
    const-string v0, "AT+ZIGBTEST=0,2,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 153
    const-string v0, "AT+ZIGBTEST=0,2,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 154
    const-string v0, "AT+ZIGBTEST=0,2,2,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 155
    const-string v0, "AT+ZIGBTEST=0,2,3,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 156
    const-string v0, "AT+UWBDTEST=0,1,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 157
    const-string v0, "AT+UWBDTEST=0,1,2,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 158
    const-string v0, "AT+CTEICODE=1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 159
    const-string v0, "AT+IRTEMPSC=0,1,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 160
    const-string v0, "AT+EWRITECK=1,7"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 161
    const-string v0, "AT+EWRITECK=6,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 162
    const-string v0, "AT+EWRITECK=6,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 163
    const-string v0, "AT+NCAMTEST=5,1,2,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 164
    const-string v0, "AT+NCAMTEST=0,0,5,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 165
    const-string v0, "AT+NCAMTEST=0,2,2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 166
    const-string v0, "AT+NCAMTEST=1,4,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 167
    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 168
    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 169
    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 170
    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_OIS"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 171
    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_PARAMETER_READ"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 172
    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_READ"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 173
    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_READ_1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 174
    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_READ_2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 175
    const-string v0, "AT+NCAMTEST=5,2,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 176
    const-string v0, "AT+NCAMTEST=1,0,8,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 177
    const-string v0, "AT+HWPARAMD=0,0,2,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 178
    const-string v0, "AT+HWPARAMD=1,3,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 179
    const-string v0, "AT+HWPARAMD=1,3,0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 180
    const-string v0, "AT+LANGUSET=0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 181
    const-string v0, "AT+DEVROOTK=1,3,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 182
    const-string v0, "AT+BTIDTEST=3,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 183
    const-string v0, "AT+BTIDTEST=1,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 184
    const-string v0, "AT+NETMODEC=1,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 185
    const-string v0, "AT+NETMODEC=1,0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 186
    const-string v0, "AT+WIFIDEBG=0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 187
    const-string v0, "AT+WIFIDEBG=0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 188
    const-string v0, "AT+WIFIDEBG=1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 189
    const-string v0, "AT+SQTPACHK=0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 190
    const-string v0, "AT+MSLSECUR=0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 191
    const-string v0, "AT+MSLSECUR=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 192
    const-string v0, "AT+MSLSECUR=3,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 193
    const-string v0, "AT+IMEITEST=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 194
    const-string v0, "AT+IMEITEST=3,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 195
    const-string v0, "AT+IMEITEST=4,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 196
    const-string v0, "AT+IMEICERT=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 197
    const-string v0, "AT+MEIDAUTH=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 198
    const-string v0, "AT+AOTKEYWR=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 199
    const-string v0, "AT+IMEISIGN=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 200
    const-string v0, "AT+DETALOCK=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 201
    const-string v0, "AT+LOCKINFO=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 202
    const-string v0, "AT+RFBYCODE=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 203
    const-string v0, "AT+CPLDUCFG=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 204
    const-string v0, "AT+BLOBSIGN=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 205
    const-string v0, "AT+SSUCONFG=0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 206
    const-string v0, "AT+SSUCONFG=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 207
    const-string v0, "AT+TFSTATUS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 208
    const-string v0, "AT+LVOFLOCK=1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 209
    return-void
.end method
