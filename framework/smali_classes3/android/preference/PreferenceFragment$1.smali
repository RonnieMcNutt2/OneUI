.class Landroid/preference/PreferenceFragment$1;
.super Landroid/os/Handler;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceFragment;)V
    .registers 2
    .param p1, "this$0"    # Landroid/preference/PreferenceFragment;

    .line 145
    iput-object p1, p0, Landroid/preference/PreferenceFragment$1;->this$0:Landroid/preference/PreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    goto :goto_b

    .line 151
    :pswitch_6
    iget-object v0, p0, Landroid/preference/PreferenceFragment$1;->this$0:Landroid/preference/PreferenceFragment;

    invoke-static {v0}, Landroid/preference/PreferenceFragment;->-$$Nest$mbindPreferences(Landroid/preference/PreferenceFragment;)V

    .line 154
    :goto_b
    return-void

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
