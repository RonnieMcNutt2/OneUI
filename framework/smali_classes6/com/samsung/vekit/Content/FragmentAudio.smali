.class public Lcom/samsung/vekit/Content/FragmentAudio;
.super Lcom/samsung/vekit/Content/Content;
.source "FragmentAudio.java"


# instance fields
.field private bodyDurationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private bodyPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private introDuration:J

.field private introPath:Ljava/lang/String;

.field private outroDuration:J

.field private outroPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .registers 5
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentType;->FRAGMENT_AUDIO:Lcom/samsung/vekit/Common/Type/ContentType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Content/Content;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ContentType;ILjava/lang/String;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Content/FragmentAudio;->bodyPathList:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Content/FragmentAudio;->bodyDurationList:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public getBodyDurationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/samsung/vekit/Content/FragmentAudio;->bodyDurationList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBodyPathList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/samsung/vekit/Content/FragmentAudio;->bodyPathList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIntroDuration()J
    .registers 3

    .line 52
    iget-wide v0, p0, Lcom/samsung/vekit/Content/FragmentAudio;->introDuration:J

    return-wide v0
.end method

.method public getIntroPath()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/samsung/vekit/Content/FragmentAudio;->introPath:Ljava/lang/String;

    return-object v0
.end method

.method public getOutroDuration()J
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/samsung/vekit/Content/FragmentAudio;->outroDuration:J

    return-wide v0
.end method

.method public getOutroPath()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/samsung/vekit/Content/FragmentAudio;->outroPath:Ljava/lang/String;

    return-object v0
.end method

.method public setDurations(JLjava/util/ArrayList;J)Lcom/samsung/vekit/Content/FragmentAudio;
    .registers 6
    .param p1, "introDuration"    # J
    .param p4, "outroDuration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;J)",
            "Lcom/samsung/vekit/Content/FragmentAudio;"
        }
    .end annotation

    .line 33
    .local p3, "bodyDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iput-wide p1, p0, Lcom/samsung/vekit/Content/FragmentAudio;->introDuration:J

    .line 34
    iput-object p3, p0, Lcom/samsung/vekit/Content/FragmentAudio;->bodyDurationList:Ljava/util/ArrayList;

    .line 35
    iput-wide p4, p0, Lcom/samsung/vekit/Content/FragmentAudio;->outroDuration:J

    .line 36
    return-object p0
.end method

.method public setPaths(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/vekit/Content/FragmentAudio;
    .registers 4
    .param p1, "introPath"    # Ljava/lang/String;
    .param p3, "outroPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/vekit/Content/FragmentAudio;"
        }
    .end annotation

    .line 26
    .local p2, "bodyPathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/samsung/vekit/Content/FragmentAudio;->introPath:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/samsung/vekit/Content/FragmentAudio;->bodyPathList:Ljava/util/ArrayList;

    .line 28
    iput-object p3, p0, Lcom/samsung/vekit/Content/FragmentAudio;->outroPath:Ljava/lang/String;

    .line 29
    return-object p0
.end method
