.class public final synthetic Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/app/OnSemColorsChangedListener;


# direct methods
.method public synthetic constructor <init>(Landroid/app/OnSemColorsChangedListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda3;->f$0:Landroid/app/OnSemColorsChangedListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda3;->f$0:Landroid/app/OnSemColorsChangedListener;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p1}, Landroid/app/WallpaperManager$Globals;->lambda$removeOnSemColorsChangedListener$4(Landroid/app/OnSemColorsChangedListener;Landroid/util/Pair;)Z

    move-result p1

    return p1
.end method
