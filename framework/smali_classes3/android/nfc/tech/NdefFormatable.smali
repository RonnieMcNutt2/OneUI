.class public final Landroid/nfc/tech/NdefFormatable;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NdefFormatable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NFC"


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .registers 3
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 73
    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;
    .registers 3
    .param p0, "tag"    # Landroid/nfc/Tag;

    .line 59
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return-object v1

    .line 61
    :cond_9
    :try_start_9
    new-instance v0, Landroid/nfc/tech/NdefFormatable;

    invoke-direct {v0, p0}, Landroid/nfc/tech/NdefFormatable;-><init>(Landroid/nfc/Tag;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    return-object v0

    .line 62
    :catch_f
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method


# virtual methods
.method public bridge synthetic close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic connect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public format(Landroid/nfc/NdefMessage;)V
    .registers 3
    .param p1, "firstMessage"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;Z)V

    .line 95
    return-void
.end method

.method format(Landroid/nfc/NdefMessage;Z)V
    .registers 7
    .param p1, "firstMessage"    # Landroid/nfc/NdefMessage;
    .param p2, "makeReadOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Landroid/nfc/tech/NdefFormatable;->checkConnected()V

    .line 125
    :try_start_3
    iget-object v0, p0, Landroid/nfc/tech/NdefFormatable;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v0

    .line 126
    .local v0, "serviceHandle":I
    iget-object v1, p0, Landroid/nfc/tech/NdefFormatable;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    .line 127
    .local v1, "tagService":Landroid/nfc/INfcTag;
    if-eqz v1, :cond_7c

    .line 130
    sget-object v2, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    invoke-interface {v1, v0, v2}, Landroid/nfc/INfcTag;->formatNdef(I[B)I

    move-result v2

    .line 131
    .local v2, "errorCode":I
    sparse-switch v2, :sswitch_data_8c

    .line 140
    new-instance v3, Ljava/io/IOException;

    goto :goto_78

    .line 133
    :sswitch_1d
    nop

    .line 143
    invoke-interface {v1, v0}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 149
    if-nez p1, :cond_29

    if-nez p2, :cond_29

    .line 150
    return-void

    .line 154
    :cond_29
    if-eqz p1, :cond_47

    .line 155
    invoke-interface {v1, v0, p1}, Landroid/nfc/INfcTag;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    move-result v3

    move v2, v3

    .line 156
    sparse-switch v2, :sswitch_data_9a

    .line 165
    new-instance v3, Ljava/io/IOException;

    goto :goto_43

    .line 158
    :sswitch_36
    goto :goto_47

    .line 160
    :sswitch_37
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v3

    .line 162
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :sswitch_3d
    new-instance v3, Landroid/nfc/FormatException;

    invoke-direct {v3}, Landroid/nfc/FormatException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v3

    .line 165
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :goto_43
    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v3

    .line 170
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :cond_47
    :goto_47
    if-eqz p2, :cond_65

    .line 171
    invoke-interface {v1, v0}, Landroid/nfc/INfcTag;->ndefMakeReadOnly(I)I

    move-result v3

    move v2, v3

    .line 172
    sparse-switch v2, :sswitch_data_a8

    .line 181
    new-instance v3, Ljava/io/IOException;

    goto :goto_61

    .line 174
    :sswitch_54
    goto :goto_65

    .line 176
    :sswitch_55
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v3

    .line 178
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :sswitch_5b
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v3

    .line 181
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :goto_61
    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v3

    .line 186
    .end local v0    # "serviceHandle":I
    .end local v1    # "tagService":Landroid/nfc/INfcTag;
    .end local v2    # "errorCode":I
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :cond_65
    :goto_65
    goto :goto_8a

    .line 144
    .restart local v0    # "serviceHandle":I
    .restart local v1    # "tagService":Landroid/nfc/INfcTag;
    .restart local v2    # "errorCode":I
    :cond_66
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v3

    .line 135
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :sswitch_6c
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v3

    .line 137
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :sswitch_72
    new-instance v3, Landroid/nfc/FormatException;

    invoke-direct {v3}, Landroid/nfc/FormatException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v3

    .line 140
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :goto_78
    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v3

    .line 128
    .end local v2    # "errorCode":I
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :cond_7c
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v2
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_82} :catch_82

    .line 184
    .end local v0    # "serviceHandle":I
    .end local v1    # "tagService":Landroid/nfc/INfcTag;
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :catch_82
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_8a
    return-void

    nop

    :sswitch_data_8c
    .sparse-switch
        -0x8 -> :sswitch_72
        -0x1 -> :sswitch_6c
        0x0 -> :sswitch_1d
    .end sparse-switch

    :sswitch_data_9a
    .sparse-switch
        -0x8 -> :sswitch_3d
        -0x1 -> :sswitch_37
        0x0 -> :sswitch_36
    .end sparse-switch

    :sswitch_data_a8
    .sparse-switch
        -0x8 -> :sswitch_5b
        -0x1 -> :sswitch_55
        0x0 -> :sswitch_54
    .end sparse-switch
.end method

.method public formatReadOnly(Landroid/nfc/NdefMessage;)V
    .registers 3
    .param p1, "firstMessage"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;Z)V

    .line 118
    return-void
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .registers 2

    .line 46
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isConnected()Z
    .registers 2

    .line 46
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic reconnect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method
