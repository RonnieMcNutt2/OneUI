.class public final synthetic Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/WallpaperManager$Globals;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:Landroid/app/SemWallpaperColors;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/WallpaperManager$Globals;Landroid/util/Pair;Landroid/app/SemWallpaperColors;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;->f$0:Landroid/app/WallpaperManager$Globals;

    iput-object p2, p0, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;->f$1:Landroid/util/Pair;

    iput-object p3, p0, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;->f$2:Landroid/app/SemWallpaperColors;

    iput p4, p0, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;->f$0:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;->f$1:Landroid/util/Pair;

    iget-object v2, p0, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;->f$2:Landroid/app/SemWallpaperColors;

    iget v3, p0, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;->f$3:I

    invoke-static {v0, v1, v2, v3}, Landroid/app/WallpaperManager$Globals;->$r8$lambda$QBmjdJXl6zSXqFSLJBcNAzxDPQE(Landroid/app/WallpaperManager$Globals;Landroid/util/Pair;Landroid/app/SemWallpaperColors;I)V

    return-void
.end method
