.class public final synthetic Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/window/TaskOrganizer$1;

.field public final synthetic f$1:Landroid/window/StartingWindowInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/window/TaskOrganizer$1;Landroid/window/StartingWindowInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda13;->f$0:Landroid/window/TaskOrganizer$1;

    iput-object p2, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda13;->f$1:Landroid/window/StartingWindowInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda13;->f$0:Landroid/window/TaskOrganizer$1;

    iget-object v1, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda13;->f$1:Landroid/window/StartingWindowInfo;

    invoke-static {v0, v1}, Landroid/window/TaskOrganizer$1;->$r8$lambda$Z1U4XE0jHytqwfqzkmnTaCrhmDg(Landroid/window/TaskOrganizer$1;Landroid/window/StartingWindowInfo;)V

    return-void
.end method
