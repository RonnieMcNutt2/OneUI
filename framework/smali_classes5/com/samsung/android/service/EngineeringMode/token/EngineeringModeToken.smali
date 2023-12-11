.class public Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;
.super Ljava/lang/Object;
.source "EngineeringModeToken.java"


# static fields
.field private static mEngineeringModeToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;


# instance fields
.field private mDeviceInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

.field private mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

.field private mIntegrityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

.field private mIssuerInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

.field private mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

.field private mModeInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

.field private mOTPtime:I

.field private mPrefix:Ljava/lang/String;

.field private mTokenInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

.field private mType:Ljava/lang/String;

.field private mValidityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mTokenInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 18
    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mDeviceInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIssuerInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 20
    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 21
    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mValidityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    .line 23
    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    .line 24
    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIntegrityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-void
.end method


# virtual methods
.method public getDeviceInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mDeviceInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-object v0
.end method

.method public getGroupDB()Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    return-object v0
.end method

.method public getIntegrityInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIntegrityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-object v0
.end method

.method public getIssuerInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIssuerInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-object v0
.end method

.method public getModeDB()Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    return-object v0
.end method

.method public getModeInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-object v0
.end method

.method public getOTPTime()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mOTPtime:I

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mTokenInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getValidityInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mValidityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public pushAttrToGroupItem(III[B)V
    .registers 6
    .param p1, "groupIndex"    # I
    .param p2, "type"    # I
    .param p3, "len"    # I
    .param p4, "attribute"    # [B

    .line 94
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    if-eqz v0, :cond_7

    .line 95
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->addAttrToGroupItem(III[B)V

    .line 99
    :cond_7
    return-void
.end method

.method public pushAttrToModeItem(III[B)V
    .registers 6
    .param p1, "modeIndex"    # I
    .param p2, "type"    # I
    .param p3, "len"    # I
    .param p4, "attribute"    # [B

    .line 81
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    if-eqz v0, :cond_7

    .line 82
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;->addAttrToModeItem(III[B)V

    .line 86
    :cond_7
    return-void
.end method

.method public pushDeviceInfo(II[B)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "len"    # I
    .param p3, "content"    # [B

    .line 51
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mDeviceInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    if-nez v0, :cond_12

    .line 52
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "DEVI"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mDeviceInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 54
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mDeviceInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->addCommonItem(II[B)V

    .line 55
    return-void
.end method

.method public pushGroupDB(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "groupIndex"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    if-nez v0, :cond_12

    .line 89
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "GRDB"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    .line 91
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->addGroupItemCollection(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public pushIntegrityInfo(II[B)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "len"    # I
    .param p3, "content"    # [B

    .line 101
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIntegrityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    if-nez v0, :cond_12

    .line 102
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "INTE"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIntegrityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 104
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIntegrityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->addCommonItem(II[B)V

    .line 105
    return-void
.end method

.method public pushIssuerInfo(II[B)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "len"    # I
    .param p3, "content"    # [B

    .line 57
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIssuerInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    if-nez v0, :cond_12

    .line 58
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "ISSU"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIssuerInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 60
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIssuerInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->addCommonItem(II[B)V

    .line 61
    return-void
.end method

.method public pushModeDB(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "modeIndex"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "groupIndex"    # I

    .line 75
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    if-nez v0, :cond_12

    .line 76
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "MODB"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    .line 78
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;->addModeItemCollection(ILjava/lang/String;Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method public pushModeInfo(II[B)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "len"    # I
    .param p3, "content"    # [B

    .line 63
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    if-nez v0, :cond_12

    .line 64
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "MODE"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 66
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->addCommonItem(II[B)V

    .line 67
    return-void
.end method

.method public pushOTPTime(I)V
    .registers 2
    .param p1, "value"    # I

    .line 107
    iput p1, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mOTPtime:I

    .line 108
    return-void
.end method

.method public pushTokenInfo(II[B)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "len"    # I
    .param p3, "content"    # [B

    .line 45
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mTokenInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    if-nez v0, :cond_12

    .line 46
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "TOKE"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mTokenInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 48
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mTokenInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->addCommonItem(II[B)V

    .line 49
    return-void
.end method

.method public pushValidityInfo(II[B)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "len"    # I
    .param p3, "content"    # [B

    .line 69
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mValidityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    if-nez v0, :cond_12

    .line 70
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "VALI"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mValidityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 72
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mValidityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->addCommonItem(II[B)V

    .line 73
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mPrefix:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mType:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mVersion:Ljava/lang/String;

    return-void
.end method
