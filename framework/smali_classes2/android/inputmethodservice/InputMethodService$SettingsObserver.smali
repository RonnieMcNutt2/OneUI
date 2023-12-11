.class final Landroid/inputmethodservice/InputMethodService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodService$SettingsObserver$ShowImeWithHardKeyboardType;
    }
.end annotation


# static fields
.field static sDesktopModeManagerWrapper:Landroid/inputmethodservice/SemDesktopModeManagerWrapper;


# instance fields
.field private final mService:Landroid/inputmethodservice/InputMethodService;

.field private mShowImeWithHardKeyboard:I


# direct methods
.method static bridge synthetic -$$Nest$mshouldShowImeWithHardKeyboard(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->shouldShowImeWithHardKeyboard()Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 4
    .param p1, "service"    # Landroid/inputmethodservice/InputMethodService;

    .line 1633
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/inputmethodservice/InputMethodService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1627
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    .line 1634
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    .line 1635
    return-void
.end method

.method public static createAndRegister(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InputMethodService$SettingsObserver;
    .registers 5
    .param p0, "service"    # Landroid/inputmethodservice/InputMethodService;

    .line 1654
    new-instance v0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    .line 1656
    .local v0, "observer":Landroid/inputmethodservice/InputMethodService$SettingsObserver;
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1657
    const-string v2, "show_ime_with_hard_keyboard"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1656
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1661
    new-instance v1, Landroid/inputmethodservice/SemDesktopModeManagerWrapper;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/SemDesktopModeManagerWrapper;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->sDesktopModeManagerWrapper:Landroid/inputmethodservice/SemDesktopModeManagerWrapper;

    .line 1664
    invoke-virtual {v1, p0}, Landroid/inputmethodservice/SemDesktopModeManagerWrapper;->shouldRegisterContentObserver(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1665
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1666
    invoke-static {}, Landroid/inputmethodservice/SemDesktopModeManagerWrapper;->getDexKeyboardSettingsUri()Landroid/net/Uri;

    move-result-object v2

    .line 1665
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1672
    :cond_2b
    return-object v0
.end method

.method private shouldShowImeWithHardKeyboard()Z
    .registers 5

    .line 1682
    iget v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    .line 1683
    nop

    .line 1684
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    .line 1683
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "show_ime_with_hard_keyboard"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_17

    .line 1685
    const/4 v0, 0x2

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    iput v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    .line 1689
    :cond_1a
    sget-object v0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->sDesktopModeManagerWrapper:Landroid/inputmethodservice/SemDesktopModeManagerWrapper;

    invoke-virtual {v0}, Landroid/inputmethodservice/SemDesktopModeManagerWrapper;->shouldUseDexKeyboardSettings()Z

    move-result v0

    const-string v3, "InputMethodService"

    if-eqz v0, :cond_41

    .line 1690
    sget-object v0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->sDesktopModeManagerWrapper:Landroid/inputmethodservice/SemDesktopModeManagerWrapper;

    invoke-virtual {v0}, Landroid/inputmethodservice/SemDesktopModeManagerWrapper;->getOnscreenKeyboardForDEXValue()Z

    move-result v0

    .line 1691
    .local v0, "showImeWithHardKeyboardForDEX":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldShowImeWithHardKeyboard: showImeWithHardKeyboardForDEX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    return v0

    .line 1696
    .end local v0    # "showImeWithHardKeyboardForDEX":Z
    :cond_41
    iget v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    packed-switch v0, :pswitch_data_62

    .line 1702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected mShowImeWithHardKeyboard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    return v2

    .line 1698
    :pswitch_5f
    return v1

    .line 1700
    :pswitch_60
    return v2

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_60
        :pswitch_5f
    .end packed-switch
.end method


# virtual methods
.method public dumpDexMode(Landroid/util/Printer;)V
    .registers 3
    .param p1, "p"    # Landroid/util/Printer;

    .line 1741
    sget-object v0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->sDesktopModeManagerWrapper:Landroid/inputmethodservice/SemDesktopModeManagerWrapper;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/SemDesktopModeManagerWrapper;->dumpDexMode(Landroid/util/Printer;)V

    .line 1742
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1709
    nop

    .line 1710
    const-string v0, "show_ime_with_hard_keyboard"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1711
    .local v1, "showImeWithHardKeyboardUri":Landroid/net/Uri;
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1712
    nop

    .line 1713
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    .line 1712
    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1d

    .line 1714
    const/4 v0, 0x2

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    iput v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    .line 1719
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mresetStateForNewConfiguration(Landroid/inputmethodservice/InputMethodService;)V

    .line 1723
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings on Change uri :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InputMethodService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    invoke-static {}, Landroid/inputmethodservice/SemDesktopModeManagerWrapper;->getDexKeyboardSettingsChangedUri()Landroid/net/Uri;

    move-result-object v0

    .line 1725
    .local v0, "showImeWithHardKeyboardUriForDEX":Landroid/net/Uri;
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1726
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mresetStateForNewConfiguration(Landroid/inputmethodservice/InputMethodService;)V

    .line 1729
    :cond_4c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsObserver{mShowImeWithHardKeyboard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unregister()V
    .registers 2

    .line 1676
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1677
    return-void
.end method

.method public updateClientDisplayId(Landroid/view/inputmethod/EditorInfo;)V
    .registers 3
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 1738
    sget-object v0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->sDesktopModeManagerWrapper:Landroid/inputmethodservice/SemDesktopModeManagerWrapper;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/SemDesktopModeManagerWrapper;->updateClientDisplayId(Landroid/view/inputmethod/EditorInfo;)V

    .line 1739
    return-void
.end method
