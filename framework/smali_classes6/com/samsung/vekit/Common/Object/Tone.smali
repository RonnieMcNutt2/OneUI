.class public Lcom/samsung/vekit/Common/Object/Tone;
.super Ljava/lang/Object;
.source "Tone.java"


# instance fields
.field private intensity:I

.field toneType:Lcom/samsung/vekit/Common/Type/ToneType;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/Type/ToneType;)V
    .registers 3
    .param p1, "toneType"    # Lcom/samsung/vekit/Common/Type/ToneType;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Tone;->toneType:Lcom/samsung/vekit/Common/Type/ToneType;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Tone;->intensity:I

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/samsung/vekit/Common/Type/ToneType;I)V
    .registers 3
    .param p1, "toneType"    # Lcom/samsung/vekit/Common/Type/ToneType;
    .param p2, "intensity"    # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Tone;->toneType:Lcom/samsung/vekit/Common/Type/ToneType;

    .line 15
    iput p2, p0, Lcom/samsung/vekit/Common/Object/Tone;->intensity:I

    .line 16
    return-void
.end method


# virtual methods
.method public getIntensity()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/samsung/vekit/Common/Object/Tone;->intensity:I

    return v0
.end method

.method public getToneType()Lcom/samsung/vekit/Common/Type/ToneType;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Tone;->toneType:Lcom/samsung/vekit/Common/Type/ToneType;

    return-object v0
.end method

.method public setIntensity(I)Lcom/samsung/vekit/Common/Object/Tone;
    .registers 2
    .param p1, "intensity"    # I

    .line 27
    iput p1, p0, Lcom/samsung/vekit/Common/Object/Tone;->intensity:I

    .line 28
    return-object p0
.end method
