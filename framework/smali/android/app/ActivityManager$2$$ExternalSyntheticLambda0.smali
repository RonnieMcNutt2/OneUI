.class public final synthetic Landroid/app/ActivityManager$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/ActivityManager$ApplicationStartInfoCompleteListener;

.field public final synthetic f$1:Landroid/app/ApplicationStartInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManager$ApplicationStartInfoCompleteListener;Landroid/app/ApplicationStartInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityManager$2$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityManager$ApplicationStartInfoCompleteListener;

    iput-object p2, p0, Landroid/app/ActivityManager$2$$ExternalSyntheticLambda0;->f$1:Landroid/app/ApplicationStartInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/ActivityManager$2$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityManager$ApplicationStartInfoCompleteListener;

    iget-object v1, p0, Landroid/app/ActivityManager$2$$ExternalSyntheticLambda0;->f$1:Landroid/app/ApplicationStartInfo;

    invoke-static {v0, v1}, Landroid/app/ActivityManager$2;->lambda$onApplicationStartInfoComplete$0(Landroid/app/ActivityManager$ApplicationStartInfoCompleteListener;Landroid/app/ApplicationStartInfo;)V

    return-void
.end method
