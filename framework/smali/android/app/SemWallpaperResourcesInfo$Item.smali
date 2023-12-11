.class Landroid/app/SemWallpaperResourcesInfo$Item;
.super Ljava/lang/Object;
.source "SemWallpaperResourcesInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SemWallpaperResourcesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Item"
.end annotation


# instance fields
.field private cmfInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fileName:Ljava/lang/String;

.field private index:Ljava/lang/Integer;

.field private isBespoke:Z

.field private isBlackFirstFrame:Z

.field private isDefault:Z

.field private screen:I

.field private type:I

.field private typeParams:Landroid/app/SemWallpaperResourcesInfo$TypeParams;

.field private videoFrameInfo:I

.field private which:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->cmfInfo:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->index:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisBespoke(Landroid/app/SemWallpaperResourcesInfo$Item;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->isBespoke:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisBlackFirstFrame(Landroid/app/SemWallpaperResourcesInfo$Item;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->isBlackFirstFrame:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisDefault(Landroid/app/SemWallpaperResourcesInfo$Item;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->isDefault:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscreen(Landroid/app/SemWallpaperResourcesInfo$Item;)I
    .registers 1

    iget p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->screen:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Landroid/app/SemWallpaperResourcesInfo$Item;)I
    .registers 1

    iget p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->type:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettypeParams(Landroid/app/SemWallpaperResourcesInfo$Item;)Landroid/app/SemWallpaperResourcesInfo$TypeParams;
    .registers 1

    iget-object p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->typeParams:Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoFrameInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)I
    .registers 1

    iget p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->videoFrameInfo:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwhich(Landroid/app/SemWallpaperResourcesInfo$Item;)I
    .registers 1

    iget p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->which:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputfileName(Landroid/app/SemWallpaperResourcesInfo$Item;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->fileName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputindex(Landroid/app/SemWallpaperResourcesInfo$Item;Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->index:Ljava/lang/Integer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisBespoke(Landroid/app/SemWallpaperResourcesInfo$Item;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->isBespoke:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisBlackFirstFrame(Landroid/app/SemWallpaperResourcesInfo$Item;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->isBlackFirstFrame:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisDefault(Landroid/app/SemWallpaperResourcesInfo$Item;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->isDefault:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscreen(Landroid/app/SemWallpaperResourcesInfo$Item;I)V
    .registers 2

    iput p1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->screen:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtype(Landroid/app/SemWallpaperResourcesInfo$Item;I)V
    .registers 2

    iput p1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->type:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvideoFrameInfo(Landroid/app/SemWallpaperResourcesInfo$Item;I)V
    .registers 2

    iput p1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->videoFrameInfo:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwhich(Landroid/app/SemWallpaperResourcesInfo$Item;I)V
    .registers 2

    iput p1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->which:I

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->index:Ljava/lang/Integer;

    .line 660
    iput v0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->which:I

    .line 661
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->fileName:Ljava/lang/String;

    .line 662
    iput v0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->type:I

    .line 663
    new-instance v2, Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    invoke-direct {v2, v1}, Landroid/app/SemWallpaperResourcesInfo$TypeParams;-><init>(Landroid/app/SemWallpaperResourcesInfo$TypeParams-IA;)V

    iput-object v2, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->typeParams:Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    .line 664
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->screen:I

    .line 665
    iput v0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->videoFrameInfo:I

    .line 666
    iput-boolean v1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->isBlackFirstFrame:Z

    .line 667
    iput-boolean v1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->isDefault:Z

    .line 668
    iput-boolean v1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->isBespoke:Z

    .line 669
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->cmfInfo:Ljava/util/ArrayList;

    return-void
.end method
