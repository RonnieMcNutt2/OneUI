.class public final synthetic Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/MessagingGroup;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/MessagingGroup;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/widget/MessagingGroup;

    iput-object p2, p0, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/widget/MessagingGroup;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/internal/widget/MessagingGroup;->$r8$lambda$8jT1iOrgwr2JwyfndnBoTkE_698(Lcom/android/internal/widget/MessagingGroup;Ljava/lang/Runnable;)V

    return-void
.end method
