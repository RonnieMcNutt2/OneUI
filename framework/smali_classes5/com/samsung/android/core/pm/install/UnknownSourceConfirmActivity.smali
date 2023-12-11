.class public Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UnknownSourceConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final EXTRA_INSTALL_TYPE:Ljava/lang/String; = "android.content.pm.extra.unknown.installtype"

.field private static final EXTRA_SESSION_ID:Ljava/lang/String; = "android.content.pm.extra.SESSION_ID"

.field private static final TAG:Ljava/lang/String; = "UnknownSourceConfirmActivity"


# instance fields
.field private mButtonClicked:Z

.field private mSessionId:I


# direct methods
.method public static synthetic $r8$lambda$putyphHwXqnDV9NetRYkQZqlnnE(Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;ILandroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->lambda$initAlertParams$0(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mButtonClicked:Z

    return-void
.end method

.method private allowInstall()V
    .registers 4

    .line 159
    const-string v0, "UnknownSourceConfirmActivity"

    const-string v1, "Allow installing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mSessionId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller;->setUnknownSourceConfirmResult(IZ)V

    .line 161
    return-void
.end method

.method private initAlertParams(I)V
    .registers 7
    .param p1, "installType"    # I

    .line 45
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 47
    .local v0, "isTablet":Z
    const v1, 0x1040e57

    const v2, 0x104000a

    const v3, 0x1040e56

    const v4, 0x1040e53

    sparse-switch p1, :sswitch_data_12a

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid install type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnknownSourceConfirmActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_129

    .line 56
    :sswitch_37
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v3, 0x1040e4d

    invoke-virtual {p0, v3}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 57
    if-eqz v0, :cond_50

    .line 58
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 59
    const v3, 0x1040e4c

    invoke-virtual {p0, v3}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_5b

    .line 61
    :cond_50
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 62
    const v3, 0x1040e4b

    invoke-virtual {p0, v3}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 64
    :goto_5b
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 65
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 66
    goto/16 :goto_129

    .line 100
    :sswitch_69
    iget-object v2, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v1}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 102
    if-eqz v0, :cond_7f

    .line 103
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 104
    const v2, 0x1040e51

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_8a

    .line 106
    :cond_7f
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 107
    const v2, 0x1040e50

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 110
    :goto_8a
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 111
    invoke-virtual {p0, v4}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 112
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 113
    invoke-virtual {p0, v3}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 114
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v2, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;I)V

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 122
    goto/16 :goto_129

    .line 79
    :sswitch_a5
    iget-object v2, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v1}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 81
    if-eqz v0, :cond_bb

    .line 82
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 83
    const v2, 0x1040e5a

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_c6

    .line 85
    :cond_bb
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 86
    const v2, 0x1040e59

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 89
    :goto_c6
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 90
    invoke-virtual {p0, v4}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 91
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 92
    invoke-virtual {p0, v3}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 93
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 95
    goto :goto_129

    .line 69
    :sswitch_db
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x1040e52

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 70
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x1040e4e

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 71
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 72
    invoke-virtual {p0, v4}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 73
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 74
    invoke-virtual {p0, v3}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 75
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 76
    goto :goto_129

    .line 49
    :sswitch_106
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v3, 0x1040e4a

    invoke-virtual {p0, v3}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 50
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v3, 0x1040e49

    invoke-virtual {p0, v3}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 51
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 52
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 53
    nop

    .line 128
    :goto_129
    return-void

    :sswitch_data_12a
    .sparse-switch
        0x1 -> :sswitch_106
        0x64 -> :sswitch_db
        0x65 -> :sswitch_a5
        0x6e -> :sswitch_69
        0x6f -> :sswitch_69
        0x70 -> :sswitch_69
        0x71 -> :sswitch_69
        0x72 -> :sswitch_69
        0x7f -> :sswitch_37
    .end sparse-switch
.end method

.method private initUI(I)V
    .registers 4
    .param p1, "installType"    # I

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->initAlertParams(I)V

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->setupAlert()V

    .line 38
    return-void
.end method

.method private synthetic lambda$initAlertParams$0(ILandroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "installType"    # I
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mButtonClicked:Z

    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/core/pm/install/UnknownSourcePhishingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    const-string v1, "android.content.pm.extra.SESSION_ID"

    iget v2, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mSessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const-string v1, "android.content.pm.extra.unknown.installtype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method

.method private rejectInstall()V
    .registers 4

    .line 154
    const-string v0, "UnknownSourceConfirmActivity"

    const-string v1, "Reject installing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mSessionId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller;->setUnknownSourceConfirmResult(IZ)V

    .line 156
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onClick "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnknownSourceConfirmActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mButtonClicked:Z

    .line 142
    packed-switch p2, :pswitch_data_2c

    goto :goto_27

    .line 144
    :pswitch_20
    invoke-direct {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->rejectInstall()V

    .line 145
    goto :goto_27

    .line 147
    :pswitch_24
    invoke-direct {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->allowInstall()V

    .line 150
    :goto_27
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->finish()V

    .line 151
    return-void

    nop

    :pswitch_data_2c
    .packed-switch -0x2
        :pswitch_24
        :pswitch_20
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 27
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.content.pm.extra.SESSION_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mSessionId:I

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.content.pm.extra.unknown.installtype"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 31
    .local v0, "installType":I
    invoke-direct {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->initUI(I)V

    .line 32
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 132
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 133
    iget-boolean v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mButtonClicked:Z

    if-nez v0, :cond_a

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->rejectInstall()V

    .line 136
    :cond_a
    return-void
.end method
