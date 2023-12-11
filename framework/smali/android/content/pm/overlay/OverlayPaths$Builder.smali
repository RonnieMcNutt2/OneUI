.class public Landroid/content/pm/overlay/OverlayPaths$Builder;
.super Ljava/lang/Object;
.source "OverlayPaths.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/overlay/OverlayPaths;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field final mPaths:Landroid/content/pm/overlay/OverlayPaths;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/content/pm/overlay/OverlayPaths;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/overlay/OverlayPaths;-><init>(Landroid/content/pm/overlay/OverlayPaths-IA;)V

    iput-object v0, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    return-void
.end method

.method private static addUniquePath(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 87
    .local p0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 88
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_9
    return-void
.end method


# virtual methods
.method public addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;
    .registers 5
    .param p1, "other"    # Landroid/content/pm/overlay/OverlayPaths;

    .line 71
    if-eqz p1, :cond_3e

    .line 72
    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v2}, Landroid/content/pm/overlay/OverlayPaths;->-$$Nest$fgetmResourceDirs(Landroid/content/pm/overlay/OverlayPaths;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addUniquePath(Ljava/util/List;Ljava/lang/String;)V

    .line 74
    .end local v1    # "path":Ljava/lang/String;
    goto :goto_a

    .line 75
    :cond_20
    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    .restart local v1    # "path":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v2}, Landroid/content/pm/overlay/OverlayPaths;->-$$Nest$fgetmOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addUniquePath(Ljava/util/List;Ljava/lang/String;)V

    .line 77
    .end local v1    # "path":Ljava/lang/String;
    goto :goto_28

    .line 79
    :cond_3e
    return-object p0
.end method

.method public addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;
    .registers 3
    .param p1, "overlayPath"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v0}, Landroid/content/pm/overlay/OverlayPaths;->-$$Nest$fgetmResourceDirs(Landroid/content/pm/overlay/OverlayPaths;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addUniquePath(Ljava/util/List;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v0}, Landroid/content/pm/overlay/OverlayPaths;->-$$Nest$fgetmOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addUniquePath(Ljava/util/List;Ljava/lang/String;)V

    .line 67
    return-object p0
.end method

.method public addNonApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;
    .registers 3
    .param p1, "idmapPath"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v0}, Landroid/content/pm/overlay/OverlayPaths;->-$$Nest$fgetmOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-object p0
.end method

.method public build()Landroid/content/pm/overlay/OverlayPaths;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    return-object v0
.end method
