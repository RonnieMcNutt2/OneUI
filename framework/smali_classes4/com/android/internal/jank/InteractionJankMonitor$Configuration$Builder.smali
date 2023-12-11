.class public Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
.super Ljava/lang/Object;
.source "InteractionJankMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAttrContext:Landroid/content/Context;

.field private mAttrCujType:I

.field private mAttrDeferMonitor:Z

.field private mAttrSurfaceControl:Landroid/view/SurfaceControl;

.field private mAttrSurfaceOnly:Z

.field private mAttrTag:Ljava/lang/String;

.field private mAttrTimeout:J

.field private mAttrView:Landroid/view/View;


# direct methods
.method private constructor <init>(I)V
    .registers 4
    .param p1, "cuj"    # I

    .line 1119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrView:Landroid/view/View;

    .line 1085
    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrContext:Landroid/content/Context;

    .line 1086
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->-$$Nest$sfgetDEFAULT_TIMEOUT_MS()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrTimeout:J

    .line 1087
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrTag:Ljava/lang/String;

    .line 1091
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrDeferMonitor:Z

    .line 1120
    iput p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrCujType:I

    .line 1121
    return-void
.end method

.method private setContext(Landroid/content/Context;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1169
    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrContext:Landroid/content/Context;

    .line 1170
    return-object p0
.end method

.method private setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .registers 2
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 1177
    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrSurfaceControl:Landroid/view/SurfaceControl;

    .line 1178
    return-object p0
.end method

.method private setSurfaceOnly(Z)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .registers 2
    .param p1, "surfaceOnly"    # Z

    .line 1161
    iput-boolean p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrSurfaceOnly:Z

    .line 1162
    return-object p0
.end method

.method private setView(Landroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 1129
    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrView:Landroid/view/View;

    .line 1130
    return-object p0
.end method

.method public static withSurface(ILandroid/content/Context;Landroid/view/SurfaceControl;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .registers 5
    .param p0, "cuj"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 1102
    new-instance v0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    invoke-direct {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;-><init>(I)V

    .line 1103
    invoke-direct {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setContext(Landroid/content/Context;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    .line 1104
    invoke-direct {v0, p2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    .line 1105
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setSurfaceOnly(Z)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    .line 1102
    return-object v0
.end method

.method public static withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .registers 4
    .param p0, "cuj"    # I
    .param p1, "view"    # Landroid/view/View;

    .line 1115
    new-instance v0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    invoke-direct {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;-><init>(I)V

    invoke-direct {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setView(Landroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    .line 1116
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setContext(Landroid/content/Context;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    .line 1115
    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1197
    new-instance v11, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    iget v1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrCujType:I

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrTag:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrTimeout:J

    iget-boolean v6, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrSurfaceOnly:Z

    iget-object v7, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrSurfaceControl:Landroid/view/SurfaceControl;

    iget-boolean v9, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrDeferMonitor:Z

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;-><init>(ILandroid/view/View;Ljava/lang/String;JZLandroid/content/Context;Landroid/view/SurfaceControl;ZLcom/android/internal/jank/InteractionJankMonitor$Configuration-IA;)V

    return-object v11
.end method

.method public setDeferMonitorForAnimationStart(Z)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .registers 2
    .param p1, "defer"    # Z

    .line 1187
    iput-boolean p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrDeferMonitor:Z

    .line 1188
    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .registers 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 1149
    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrTag:Ljava/lang/String;

    .line 1150
    return-object p0
.end method

.method public setTimeout(J)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .registers 3
    .param p1, "timeout"    # J

    .line 1138
    iput-wide p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrTimeout:J

    .line 1139
    return-object p0
.end method
