import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

final myChannel = supabase.channel('my_channel');
