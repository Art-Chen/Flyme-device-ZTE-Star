.class Lcom/flyme/DeviceOriginalSettings/CryptKeeper$8;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/CryptKeeper;->passwordEntryInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/CryptKeeper;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/CryptKeeper$8;->this$0:Lcom/flyme/DeviceOriginalSettings/CryptKeeper;

    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/CryptKeeper$8;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 797
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/CryptKeeper$8;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 798
    return-void
.end method
