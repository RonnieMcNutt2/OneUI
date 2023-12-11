.class public final Landroid/os/BatteryConsumer$Key;
.super Ljava/lang/Object;
.source "BatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# instance fields
.field final mDurationColumnIndex:I

.field final mPowerColumnIndex:I

.field final mPowerModelColumnIndex:I

.field private mShortString:Ljava/lang/String;

.field public final powerComponent:I

.field public final processState:I


# direct methods
.method private constructor <init>(IIIII)V
    .registers 6
    .param p1, "powerComponent"    # I
    .param p2, "processState"    # I
    .param p3, "powerModelColumnIndex"    # I
    .param p4, "powerColumnIndex"    # I
    .param p5, "durationColumnIndex"    # I

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput p1, p0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    .line 269
    iput p2, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 271
    iput p3, p0, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    .line 272
    iput p4, p0, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    .line 273
    iput p5, p0, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    .line 274
    return-void
.end method

.method synthetic constructor <init>(IIIIILandroid/os/BatteryConsumer$Key-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/os/BatteryConsumer$Key;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 280
    move-object v0, p1

    check-cast v0, Landroid/os/BatteryConsumer$Key;

    .line 281
    .local v0, "key":Landroid/os/BatteryConsumer$Key;
    iget v1, p0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    if-ne v1, v2, :cond_11

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->processState:I

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 287
    iget v0, p0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    .line 288
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    add-int/2addr v1, v2

    .line 289
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 296
    iget-object v0, p0, Landroid/os/BatteryConsumer$Key;->mShortString:Ljava/lang/String;

    if-nez v0, :cond_2a

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    invoke-static {v1}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget v1, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    if-eqz v1, :cond_24

    .line 300
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    iget v1, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    invoke-static {v1}, Landroid/os/BatteryConsumer;->processStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/BatteryConsumer$Key;->mShortString:Ljava/lang/String;

    .line 305
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2a
    iget-object v0, p0, Landroid/os/BatteryConsumer$Key;->mShortString:Ljava/lang/String;

    return-object v0
.end method
