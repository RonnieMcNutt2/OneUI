.class final Landroid/widget/RemoteViews$HierarchyRootData;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HierarchyRootData"
.end annotation


# instance fields
.field final mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

.field final mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

.field final mClassCookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$ApplicationInfoCache;Ljava/util/Map;)V
    .registers 4
    .param p1, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;
    .param p2, "applicationInfoCache"    # Landroid/widget/RemoteViews$ApplicationInfoCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews$BitmapCache;",
            "Landroid/widget/RemoteViews$ApplicationInfoCache;",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7726
    .local p3, "classCookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7727
    iput-object p1, p0, Landroid/widget/RemoteViews$HierarchyRootData;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 7728
    iput-object p2, p0, Landroid/widget/RemoteViews$HierarchyRootData;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 7729
    iput-object p3, p0, Landroid/widget/RemoteViews$HierarchyRootData;->mClassCookies:Ljava/util/Map;

    .line 7730
    return-void
.end method
