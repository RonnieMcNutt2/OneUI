.class Landroid/media/MediaCas$OpenSessionCallback;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Landroid/hardware/cas/V1_0/ICas$openSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenSessionCallback"
.end annotation


# instance fields
.field public mSession:Landroid/media/MediaCas$Session;

.field public mStatus:I

.field final synthetic this$0:Landroid/media/MediaCas;


# direct methods
.method private constructor <init>(Landroid/media/MediaCas;)V
    .registers 2

    .line 1069
    iput-object p1, p0, Landroid/media/MediaCas$OpenSessionCallback;->this$0:Landroid/media/MediaCas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCas;Landroid/media/MediaCas$OpenSessionCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaCas$OpenSessionCallback;-><init>(Landroid/media/MediaCas;)V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .registers 5
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1074
    .local p2, "sessionId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iput p1, p0, Landroid/media/MediaCas$OpenSessionCallback;->mStatus:I

    .line 1075
    iget-object v0, p0, Landroid/media/MediaCas$OpenSessionCallback;->this$0:Landroid/media/MediaCas;

    invoke-static {v0, p2}, Landroid/media/MediaCas;->-$$Nest$mtoBytes(Landroid/media/MediaCas;Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaCas;->createFromSessionId([B)Landroid/media/MediaCas$Session;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCas$OpenSessionCallback;->mSession:Landroid/media/MediaCas$Session;

    .line 1076
    return-void
.end method
