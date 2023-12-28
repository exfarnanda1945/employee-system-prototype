import 'package:employee_system_prototype/utils/colors.dart';
import 'package:flutter/material.dart';

class AutoPresenceForm extends StatelessWidget {
  const AutoPresenceForm({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Clock In',
          style: TextStyle(
            color: hanBlue,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.black,
                    size: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: Text(
                      'Your Location',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Text(
                  'Jl. Citra Indah Utama No.18 RT.04/RW.019 , Desa Sukamaju, Kecamatan  Jonggol, Kabupaten Bogor, Jawa Barat 16830',
                  style: TextStyle(
                    color: davyGrey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.notes,
                      color: Colors.black,
                      size: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        'Note (Optional)',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextFormField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: blueberry,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(45),
                      backgroundColor: blueberry,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                  child: const Text(
                    'Clock In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
