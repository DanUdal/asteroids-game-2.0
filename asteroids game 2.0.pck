GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex`#      �      &�y���ڞu;>��.p    res://Prefabs/BaseAsteroid.tscn �      �      ���^���7_Cm�s&B    res://Resources/Asteroid.tres   P      C       �sp����kqf|�]�J    res://Resources/AsteroidMat.tres�      {       �� s�K�?`�����   res://Resources/Planet.tres  	      C       ����Xf\��I�n�    res://Resources/PlanetMat.tres  p	      l       ��Ⱥ�i��Yh���   res://Resources/Sun.tres�	      D       Oѩ�.��3m[�f��E   res://Resources/SunMat.tres 0
      �       ~����Fz�.����   res://Scenes/GameScene.tscn 0      �      �h���%Q��Պ}��$   res://Scripts/BaseAsteroid.gd.remap �+      /       z?]��UG��/4�    res://Scripts/BaseAsteroid.gdc         &      ��j%�
��f~ b$   res://Scripts/Controller.gd.remap    ,      -       )5���}��H`�#����   res://Scripts/Controller.gdcP      �      ��J��
�ϊ�:�F���    res://Scripts/Planet.gd.remap   P,      )       AC��V�����}�%�   res://Scripts/Planet.gdc       �      i�R�;M�ȉI�3NbF   res://Scripts/Speed.gd.remap�,      (       դ5<N��fRj
�#   res://Scripts/Speed.gdc �       �      ���̗7�)��Y�   res://default_env.tres  �"      �       um�`�N��<*ỳ�8   res://icon.png  �,      �      G1?��z�c��vN��   res://icon.png.import   @)      �      ��fe��6�B��^ U�   res://project.binary�9      w      ړd��=�z$j)w���h        [gd_scene load_steps=4 format=2]

[ext_resource path="res://Resources/AsteroidMat.tres" type="Material" id=1]
[ext_resource path="res://Resources/Asteroid.tres" type="Shape" id=2]
[ext_resource path="res://Scripts/BaseAsteroid.gd" type="Script" id=3]

[node name="Asteroid" type="CSGSphere"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 8.01267, 0, 6.21881 )
radius = 2.0
material = ExtResource( 1 )
script = ExtResource( 3 )

[node name="Area" type="Area" parent="."]

[node name="CollisionShape" type="CollisionShape" parent="Area"]
shape = ExtResource( 2 )

[connection signal="area_entered" from="Area" to="." method="_on_Area_area_entered"]
     [gd_resource type="SphereShape" format=2]

[resource]
radius = 2.0
             [gd_resource type="SpatialMaterial" format=2]

[resource]
albedo_color = Color( 0.227451, 0.0941176, 0, 1 )
metallic = 0.3
     [gd_resource type="SphereShape" format=2]

[resource]
radius = 0.5
             [gd_resource type="SpatialMaterial" format=2]

[resource]
albedo_color = Color( 0.0352941, 0.478431, 0, 1 )
    [gd_resource type="SphereShape" format=2]

[resource]
radius = 2.02
            [gd_resource type="SpatialMaterial" format=2]

[resource]
albedo_color = Color( 0.596078, 0.0705882, 0.0705882, 1 )
emission_enabled = true
emission = Color( 0.968627, 1, 0, 1 )
emission_energy = 1.0
emission_operator = 0
emission_on_uv2 = false
          [gd_scene load_steps=7 format=2]

[ext_resource path="res://Resources/PlanetMat.tres" type="Material" id=1]
[ext_resource path="res://Scripts/Planet.gd" type="Script" id=2]
[ext_resource path="res://Resources/SunMat.tres" type="Material" id=3]
[ext_resource path="res://Resources/Planet.tres" type="Shape" id=4]
[ext_resource path="res://Resources/Sun.tres" type="Shape" id=5]
[ext_resource path="res://Scripts/Speed.gd" type="Script" id=6]

[node name="Spatial" type="Spatial"]

[node name="Star" type="CSGSphere" parent="."]
radius = 2.0
rings = 50
material = ExtResource( 3 )

[node name="KinematicBody" type="KinematicBody" parent="Star"]

[node name="CollisionShape" type="CollisionShape" parent="Star/KinematicBody"]
shape = ExtResource( 5 )

[node name="Player" type="CSGSphere" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 6.20852, 0, 0 )
radius = 0.5
material = ExtResource( 1 )
script = ExtResource( 2 )

[node name="Area" type="Area" parent="Player"]

[node name="CollisionShape" type="CollisionShape" parent="Player/Area"]
shape = ExtResource( 4 )

[node name="Camera" type="Camera" parent="."]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, 1, 0, -1, -4.37114e-08, 0, 30, 0 )
size = 30.0

[node name="CanvasLayer" type="CanvasLayer" parent="."]

[node name="RichTextLabel" type="RichTextLabel" parent="CanvasLayer"]
margin_right = 134.0
margin_bottom = 115.0
script = ExtResource( 6 )

[connection signal="area_entered" from="Player/Area" to="Player" method="_on_Area_area_entered"]
     GDSC         #   �      ��������Ӷ��   ��Ѷ   ��������������������Ķ��   ����   䶶�   ����Ҷ��   ����׶��   �����϶�   ����������Ӷ   ����������ض   �������Ŷ���   ����׶��   ���������Ӷ�   ��������������������Ҷ��   ���׶���   ���������¶�   ���Ӷ���                                     Player                                                      	      
   !      "      #      )      /      <      Q      R      S      T      [      a      v      |      �      �      �      �      �      �      �      �       �   !   �   "   �   #   3YYYYYY;�  �  T�  PQY;�  Y;�  �  Y;�  Z�  YYY0�  PQV�  �  T�%  PQ�  �  �  T�  P�  R�  ZQ�  �	  �  P�  P�  QR�  R�  �  P�  QQYYYY0�
  P�  QV�  �  �  �  �  �	  �  P�  P�  QR�  R�  �  P�  QQ�  &�  
�  V�  �  PQYYY0�  P�  QV�  &�  �  V�  �  T�%  PQ�  �  �  T�  P�  R�  ZQ�  �	  �  P�  P�  QR�  R�  �  P�  QQ�  '�  T�  PQT�  �  V�  �  T�  PQT�  PQ�  �  PQY`          GDSC         "   �      ���Ӷ���   �����¶�   ����Ҷ��   ��������Ŷ��   ����Ķ��   �������Ӷ���   �������Ӷ���   ����Ӷ��   ���������Ķ�   �����϶�   �������Ŷ���   ����׶��   ����Ŷ��   �������Ҷ���   �������Ӷ���   ��������Ҷ��   䶶�      res://Prefabs/BaseAsteroid.tscn       ?      .             �                                                               
         	      
         #      (      -      .      /      5      7      8      9      :      A      G      W      `      g      q      u      |      �      �      �       �   !   �   "   3YYYYYY;�  Y;�  Y;�  �L  PQY;�  �  Y5;�  �  P�  QY;�  �  Y;�  �  YYY0�	  PQV�  -YYYY0�
  P�  QV�  &�  
�  V�  )�  �K  P�  P�  �  Q�  QV�  ;�  �  T�  PQ�  �  T�  P�  Q�  �  �  T�  �  T�  �  �  �  �  &�Y  P�  QV�  &�  �  V�  �  P�  T�  Q�  �  �  �  �  (V�  �  �  Y`         GDSC         ?   e     ��������Ӷ��   䶶�   ����׶��   �����ڶ�   ������¶   ����������Ҷ   ������������Ӷ��   ��������������Ӷ   �������¶���   �����޶�   �����϶�   ���������Ķ�   �����¶�   �������Ŷ���   ����׶��   ����������ض   ����¶��   ����������������Ҷ��   ���������Ӷ�   �������Ӷ���   ���¶���   ��������������������Ҷ��   ���׶���   ���������¶�   ����Ӷ��   
                              ffffff@   x      	   ui_select              �?            ui_shift      ui_break      ?      @      hit    d                                                       	      
         "      )      0      5      :      ;      <      B      H      J      K      L      M      T      i      o      {      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .     /     0     1     2     3   $  4   (  5   ,  6   6  7   :  8   B  9   C  :   J  ;   N  <   S  =   ]  >   c  ?   3YYYYYY;�  Y;�  �  Y;�  Z�  Y;�  �  Y;�  �  Y;�  ZY;�  Z�  Y;�  �  Y;�	  YYY0�
  PQV�  �  T�  �  -YYYY0�  P�  QV�  �  �  P�  �  P�  QR�  R�  P�  QQ�  �  �  �  �  �  P�  �  Q�  �  &�  	�  V�  �  Z�  �  �  &�  �  ZV�  �  �  Z�  &�  T�  P�  Q�  Z�  V�  �  �  �  �  �	  �  �  �
  �  &�  T�  P�  QV�  �  �  �  �  �	  �  �  �
  �  &�  T�  P�  Q�  Z�  V�  �  �  �  �  &�  	�  �  Z�  �  �
  V�  �  �  �  �  �  �  �  �  &�  �  V�  �  �  �  �  �  �  &�  �  �  �
  V�  �  �  �  �  �  �  �  �  &�  	�  V�  �  �  �  �  �  �  &�  
�  �	  
�  V�  �  PQ�  �  PQT�  PQYY0�  P�  QV�  �	  �
  �  �?  P�  Q�  �  T�  PQT�  PQ�  �  T�  �  Y`              GDSC            U      ������������ڶ��   �����϶�   �������Ŷ���   ����׶��   ���������Ķ�   �����¶�   ���¶���   �����ڶ�   䶶�   ����Ӷ��   �����޶�      
                                                    	   	   
   
                                       %      =      S      3YYYYYYYYY0�  PQV�  -YYYY0�  P�  QV�  &�Y  P�  T�  QV�  �  �>  P�>  P�  T�  T�  Q�>  P�  T�  T�  Q�  �>  P�  T�	  Q�>  P�  T�  T�
  QQY`              [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://Scripts/BaseAsteroid.gdc"
 [remap]

path="res://Scripts/Controller.gdc"
   [remap]

path="res://Scripts/Planet.gdc"
       [remap]

path="res://Scripts/Speed.gdc"
        �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         asteroids game 2.0     application/run/main_scene$         res://Scenes/GameScene.tscn    application/config/icon         res://icon.png     autoload/Controller$         *res://Scripts/Controller.gd   display/window/size/height            display/window/size/fullscreen            display/window/stretch/mode         2d  +   gui/common/drop_mouse_on_gui_input_disabled            input/ui_shift�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/ui_break�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script      )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres           