.class final Lcom/samsung/android/jdsms/DsmsMessage;
.super Ljava/lang/Object;
.source "DsmsMessage.java"


# static fields
.field private static final SUBTAG:Ljava/lang/String; = "[DsmsMessage] "


# instance fields
.field private final mDetail:Ljava/lang/String;

.field private final mFeatureCode:Ljava/lang/String;

.field private final mValue:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "featureCode"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/samsung/android/jdsms/DsmsMessage;->validateFeatureCode(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mFeatureCode:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mDetail:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mValue:Ljava/lang/Long;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 4
    .param p1, "featureCode"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/samsung/android/jdsms/DsmsMessage;->validateFeatureCode(Ljava/lang/String;)V

    .line 45
    invoke-static {p2}, Lcom/samsung/android/jdsms/DsmsMessage;->validateValue(Ljava/lang/Long;)V

    .line 46
    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mFeatureCode:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mDetail:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mValue:Ljava/lang/Long;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "featureCode"    # Ljava/lang/String;
    .param p2, "detail"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/samsung/android/jdsms/DsmsMessage;->validateFeatureCode(Ljava/lang/String;)V

    .line 37
    invoke-static {p2}, Lcom/samsung/android/jdsms/DsmsMessage;->validateDetail(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mFeatureCode:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mDetail:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mValue:Ljava/lang/Long;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 4
    .param p1, "featureCode"    # Ljava/lang/String;
    .param p2, "detail"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Long;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lcom/samsung/android/jdsms/DsmsMessage;->validateFeatureCode(Ljava/lang/String;)V

    .line 53
    invoke-static {p2}, Lcom/samsung/android/jdsms/DsmsMessage;->validateDetail(Ljava/lang/String;)V

    .line 54
    invoke-static {p3}, Lcom/samsung/android/jdsms/DsmsMessage;->validateValue(Ljava/lang/Long;)V

    .line 55
    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mFeatureCode:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mDetail:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mValue:Ljava/lang/Long;

    .line 58
    return-void
.end method

.method private static validateDetail(Ljava/lang/String;)V
    .registers 3
    .param p0, "detail"    # Ljava/lang/String;

    .line 78
    if-eqz p0, :cond_3

    .line 81
    return-void

    .line 79
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DSMS-FRAMEWORK[DsmsMessage] Detail field is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateFeatureCode(Ljava/lang/String;)V
    .registers 3
    .param p0, "featureCode"    # Ljava/lang/String;

    .line 90
    if-eqz p0, :cond_3

    .line 93
    return-void

    .line 91
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DSMS-FRAMEWORK[DsmsMessage] Identifier is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateValue(Ljava/lang/Long;)V
    .registers 3
    .param p0, "value"    # Ljava/lang/Long;

    .line 84
    if-eqz p0, :cond_3

    .line 87
    return-void

    .line 85
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DSMS-FRAMEWORK[DsmsMessage] Value field is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureCode()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mFeatureCode:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Long;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mValue:Ljava/lang/Long;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mFeatureCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsMessage;->mValue:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
