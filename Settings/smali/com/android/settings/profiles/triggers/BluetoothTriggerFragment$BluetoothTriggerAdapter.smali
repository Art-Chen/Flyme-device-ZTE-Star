.class Lcom/android/settings/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BluetoothTriggerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/profiles/triggers/BluetoothTriggerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothTriggerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/triggers/BluetoothTriggerFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/profiles/triggers/BluetoothTriggerFragment;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/settings/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;->this$0:Lcom/android/settings/profiles/triggers/BluetoothTriggerFragment;

    .line 234
    const/high16 v0, 0x7f040000

    const v1, 0x7f100005

    # getter for: Lcom/android/settings/profiles/triggers/BluetoothTriggerFragment;->mTriggers:Ljava/util/List;
    invoke-static {p1}, Lcom/android/settings/profiles/triggers/BluetoothTriggerFragment;->access$200(Lcom/android/settings/profiles/triggers/BluetoothTriggerFragment;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 235
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/settings/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 240
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/high16 v6, 0x7f040000

    const/4 v7, 0x0

    invoke-virtual {v2, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 241
    .local v3, "rowView":Landroid/view/View;
    const v6, 0x7f100005

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 242
    .local v4, "title":Landroid/widget/TextView;
    const v6, 0x7f100004

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 243
    .local v0, "desc":Landroid/widget/TextView;
    const v6, 0x7f100003

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 245
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/android/settings/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;

    .line 247
    .local v5, "trigger":Lcom/android/settings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;
    invoke-virtual {v5}, Lcom/android/settings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {v5}, Lcom/android/settings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->getSummary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v5}, Lcom/android/settings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->getIcon()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    return-object v3
.end method
