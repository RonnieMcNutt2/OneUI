.class Landroid/service/wallpaper/WallpaperService$Engine$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/wallpaper/WallpaperService$Engine;->updateSurfaceDimming()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .registers 2
    .param p1, "this$1"    # Landroid/service/wallpaper/WallpaperService$Engine;

    .line 1219
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1222
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1223
    return-void
.end method
